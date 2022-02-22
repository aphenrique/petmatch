import 'package:flutter/material.dart';
import 'package:petmatch/src/adoption/models/pet_model.dart';
import 'package:petmatch/src/adoption/view/pages/pet_detail_page.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';
import 'package:petmatch/src/home/view/pages/home_page.dart';

class PetAppWidget extends StatelessWidget {
  const PetAppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Match - find your pet',
      theme: ThemeData(
        primarySwatch: AppColors.primaryColor,
        fontFamily: 'Circular',
      ),
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/petDetail': (context) {
          final pet = ModalRoute.of(context)!.settings.arguments as PetModel;
          return PetDetailPage(pet: pet);
        },
      },
    );
  }
}
