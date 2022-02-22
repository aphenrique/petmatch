import 'package:flutter/material.dart';

import 'package:petmatch/src/core/colors/app_colors.dart';

class CategoryPetButtonWidget extends StatelessWidget {
  final bool selected;
  final String image;
  final String name;

  const CategoryPetButtonWidget({
    Key? key,
    required this.selected,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double size = 65;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(12),
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: selected ? AppColors.primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primaryColor.shade400,
                  offset: const Offset(0, 6),
                  blurRadius: 20,
                ),
              ],
            ),
            child: Image.asset(
              image,
              color: selected ? Colors.white : AppColors.inactiveIconsColor,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
