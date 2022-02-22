import 'package:flutter/material.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';

class DrawerMenuWidget extends StatelessWidget {
  const DrawerMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: const [
        ListTile(
          leading: Icon(Icons.pets_rounded, color: Colors.white),
          title: Text(
            'Adoption',
            style: TextStyle(
                fontSize: 20,
                color: AppColors.menuTextColor,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.attach_money_rounded, color: Colors.white38),
          title: Text(
            'Donation',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.add_circle, color: Colors.white38),
          title: Text(
            'Add pet',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.favorite_rounded, color: Colors.white38),
          title: Text(
            'Favorites',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.mail, color: Colors.white38),
          title: Text(
            'Messages',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(height: 20),
        ListTile(
          leading: Icon(Icons.person, color: Colors.white38),
          title: Text(
            'Profile',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
