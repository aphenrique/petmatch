import 'package:flutter/material.dart';
import 'package:petmatch/src/adoption/view/pages/list_pets_page.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';
import 'package:petmatch/src/home/stores/drawer_store.dart';
import 'package:petmatch/src/home/view/widgets/drawer_menu_widget.dart';
import 'package:petmatch/src/home/view/widgets/settings_menu_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final DrawerStore drawerStore;
  late final AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));
    drawerStore = context.read<DrawerStore>();

    drawerStore.addListener(() {
      if (drawerStore.isOpen) {
        controller.reverse();
      } else {
        controller.forward();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async {
        if (drawerStore.isOpen) {
          drawerStore.alternateDrawer();
        }

        return true;
      },
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: const [
                  ListTile(
                    horizontalTitleGap: 24,
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/perfil.jpg'),
                    ),
                    title: Text(
                      'Kendall Jenner',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: AppColors.menuTextColor,
                      ),
                    ),
                    subtitle: Text(
                      'Active status',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: AppColors.textColor,
                          fontSize: 12),
                    ),
                  ),
                  Expanded(
                    child: DrawerMenuWidget(),
                  ),
                  SettingsMenuWidget(),
                ],
              ),
            ),
            ValueListenableBuilder<bool>(
                valueListenable: drawerStore,
                builder: (context, value, child) {
                  return AnimatedPositioned(
                    child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(drawerStore.isOpen ? 0 : 30),
                        child: const ListPetsPage()),
                    curve: Curves.ease,
                    left: drawerStore.isOpen ? 0 : size.width * 0.6,
                    right: drawerStore.isOpen ? 0 : size.width * -0.6,
                    top: drawerStore.isOpen ? 0 : size.height * 0.1,
                    bottom: drawerStore.isOpen ? 0 : size.height * 0.1,
                    duration: const Duration(milliseconds: 500),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
