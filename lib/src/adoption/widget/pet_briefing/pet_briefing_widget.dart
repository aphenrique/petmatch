import 'package:flutter/material.dart';
import 'package:petmatch/src/adoption/models/pet_model.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';

class PetBriefingWidget extends StatelessWidget {
  final PetModel pet;

  const PetBriefingWidget({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(bottom: 24),
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: InkResponse(
        onTap: () {
          Navigator.pushNamed(context, '/petDetail', arguments: pet);
        },
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: size.height * 0.225,
                    decoration: BoxDecoration(
                      color: pet.backGroundColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 8),
                          blurRadius: 40,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: size.height * 0.18,
                    padding: const EdgeInsets.all(12),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 8),
                          blurRadius: 40,
                        ),
                      ],
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  pet.name,
                                  style: const TextStyle(
                                    color: AppColors.textHeader2Color,
                                    fontSize: 24,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Transform.rotate(
                                angle: pet.gender == 'm' ? 0 : 4,
                                child: Icon(
                                  pet.gender == 'm' ? Icons.male : Icons.female,
                                  size: 32,
                                  color: AppColors.inactiveIconsColor,
                                ),
                              ),
                            ],
                          ),
                          Text(
                            pet.breed,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textHeader2Color,
                            ),
                          ),
                          Text(
                            "${pet.age} years old",
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: AppColors.textColor,
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.location_on,
                                size: 20,
                                color: AppColors.primaryColor,
                              ),
                              Expanded(
                                child: Text(
                                  "Distance: ${pet.distance} km",
                                  style: const TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: size.width * 0.4,
              padding: const EdgeInsets.only(bottom: 8),
              child: Image.asset(
                pet.photo,
                height: size.height * 0.27,
                fit: BoxFit.fitHeight,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
