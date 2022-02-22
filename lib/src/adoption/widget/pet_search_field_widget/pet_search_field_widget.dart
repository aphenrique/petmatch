import 'package:flutter/material.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';

class PetSearchFielWidget extends StatelessWidget implements PreferredSize {
  const PetSearchFielWidget({Key? key}) : super(key: key);

  @override
  Widget get child => Container();

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      height: 80,
      child: TextField(
        textInputAction: TextInputAction.search,
        onSubmitted: (value) {},
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.black12,
          ),
          suffixIcon: const Icon(
            Icons.tune_sharp,
            color: Colors.black12,
          ),
          hintText: 'Search',
          hintStyle: const TextStyle(color: AppColors.textHeader3Color),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
