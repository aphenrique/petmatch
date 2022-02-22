import 'package:flutter/material.dart';
import 'package:petmatch/src/adoption/models/pet_model.dart';
import 'package:petmatch/src/adoption/widget/custom_appbar_widget/custom_appbar_widget.dart';
import 'package:petmatch/src/adoption/widget/list_pet_categories_widget/list_pet_categories_widget.dart';
import 'package:petmatch/src/adoption/widget/pet_briefing/pet_briefing_widget.dart';
import 'package:petmatch/src/adoption/widget/pet_search_field_widget/pet_search_field_widget.dart';
import 'package:petmatch/src/core/colors/app_colors.dart';

class ListPetsPage extends StatelessWidget {
  const ListPetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const CustomAppbarWidget(),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              child: Container(
                color: AppColors.pageBackgroundColor,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SizedBox(height: 16),
                    const PetSearchFielWidget(),
                    const ListPetCategoriesWidget(),
                    Expanded(
                      child: ListView(
                        children: [
                          PetBriefingWidget(pet: PetModel.pets[0]),
                          PetBriefingWidget(pet: PetModel.pets[1]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
