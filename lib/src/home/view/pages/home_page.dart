import 'package:flutter/material.dart';
import 'package:petmatch/src/adoption/view/pages/list_pets_page.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';
import 'package:petmatch/src/home/view/widgets/drawer_menu_widget.dart';
import 'package:petmatch/src/home/view/widgets/settings_menu_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
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
            const ListPetsPage(),
          ],
        ),
      ),
    );
  }
}
