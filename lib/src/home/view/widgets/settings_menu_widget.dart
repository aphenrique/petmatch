import 'package:flutter/material.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';

class SettingsMenuWidget extends StatelessWidget {
  const SettingsMenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.5,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(width: 4),
          const Icon(
            Icons.settings,
            color: Colors.white38,
            size: 28,
          ),
          const Text(
            'Settings',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                fontWeight: FontWeight.w500),
          ),
          Container(
            color: AppColors.textHeader3Color,
            width: 1,
            height: 20,
          ),
          const Text(
            'Log out',
            style: TextStyle(
                fontSize: 20,
                color: Colors.white38,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
