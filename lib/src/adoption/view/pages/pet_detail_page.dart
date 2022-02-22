import 'package:flutter/material.dart';
import 'package:petmatch/src/adoption/models/pet_model.dart';
import 'package:petmatch/src/adoption/widget/detail_page_background/detail_page_background.dart';
import 'package:petmatch/src/adoption/widget/detail_pet_info_widget/detail_pet_info_widget.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';

class PetDetailPage extends StatelessWidget {
  final PetModel pet;

  const PetDetailPage({
    Key? key,
    required this.pet,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          const DetailPageBackground(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset(pet.photo, height: size.height * 0.45),
              const DetailPetInfoWidget(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: ListTile(
                  horizontalTitleGap: 24,
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/perfil.jpg'),
                  ),
                  title: Text(
                    'Kendall Jenner',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: AppColors.textHeader2Color,
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Text(
                    'Owner',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: AppColors.textHeader3Color,
                      fontSize: 12,
                    ),
                  ),
                  trailing: Text(
                    'May 25, 2019',
                    style: TextStyle(
                      color: AppColors.textHeader3Color,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "My job requires moving to another country. I don't have the opportunity to take the cat with me. I am looking for good people who shelter my Sola.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: AppColors.textHeader3Color,
                    fontSize: 15,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Circular',
                  ),
                ),
              ),
              const Expanded(child: SizedBox()),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.grey.shade200,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 70,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.favorite_border_rounded),
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 60,
                      width: size.width * 0.6,
                      child: Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Adoption',
                            style: TextStyle(fontSize: 20),
                          ),
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
