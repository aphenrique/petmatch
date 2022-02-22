import 'package:flutter/material.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';

class CustomAppbarWidget extends StatelessWidget {
  const CustomAppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.clear_all_rounded,
          size: 36,
        ),
      ),
      title: Column(
        children: [
          const Text(
            'Location',
            style: TextStyle(
                color: AppColors.textColor,
                fontWeight: FontWeight.w500,
                fontSize: 16),
          ),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.location_on,
                size: 20,
                color: AppColors.primaryColor,
              ),
              SizedBox(width: 8),
              Text(
                'Kyiv,',
                style: TextStyle(
                    color: AppColors.textHeader2Color,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(width: 8),
              Text(
                'Ukraine',
                style: TextStyle(
                    color: AppColors.textHeader2Color,
                    fontWeight: FontWeight.w400,
                    fontSize: 22),
              ),
            ],
          ),
        ],
      ),
      trailing: const CircleAvatar(
        backgroundImage: AssetImage('assets/images/perfil.jpg'),
      ),
      contentPadding: const EdgeInsets.all(16),
    );
  }
}
