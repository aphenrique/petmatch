import 'package:flutter/material.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';

class DetailPetInfoWidget extends StatelessWidget {
  const DetailPetInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.8,
      height: size.height * 0.16,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Colors.black26,
                offset: Offset(0, 2),
                blurRadius: 20,
                blurStyle: BlurStyle.outer),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Expanded(
                child: Text(
                  'Sola',
                  style: TextStyle(
                    color: AppColors.textHeader2Color,
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Transform.rotate(
                angle: 'f' == 'm' ? 0 : 4,
                child: const Icon(
                  'f' == 'm' ? Icons.male : Icons.female,
                  size: 32,
                  color: AppColors.inactiveIconsColor,
                ),
              ),
            ],
          ),
          Row(
            children: const [
              Expanded(
                child: Text(
                  'Abyssinian cat',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: AppColors.textHeader2Color,
                  ),
                ),
              ),
              Text(
                "2 years old",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: AppColors.textHeader3Color,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Icon(
                Icons.location_on,
                size: 20,
                color: AppColors.primaryColor,
              ),
              Expanded(
                child: Text(
                  "5 Bulvarna-Kudriavska Street, Kyvi",
                  style: TextStyle(
                    color: AppColors.textColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
