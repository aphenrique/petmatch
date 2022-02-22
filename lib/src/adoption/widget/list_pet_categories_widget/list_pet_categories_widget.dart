import 'package:flutter/material.dart';
import 'package:petmatch/src/adoption/widget/list_pet_categories_widget/category_pet_button_widget.dart';

class ListPetCategoriesWidget extends StatelessWidget {
  const ListPetCategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          CategoryPetButtonWidget(
            selected: true,
            name: 'Cats',
            image: 'assets/images/cat.png',
          ),
          CategoryPetButtonWidget(
            selected: false,
            name: 'Dogs',
            image: 'assets/images/dog.png',
          ),
          CategoryPetButtonWidget(
            selected: false,
            name: 'Parrots',
            image: 'assets/images/parrot.png',
          ),
          CategoryPetButtonWidget(
            selected: false,
            name: 'Bunnies',
            image: 'assets/images/rabbit.png',
          ),
          CategoryPetButtonWidget(
            selected: false,
            name: 'Horses',
            image: 'assets/images/horse.png',
          ),
        ],
      ),
    );
  }
}
