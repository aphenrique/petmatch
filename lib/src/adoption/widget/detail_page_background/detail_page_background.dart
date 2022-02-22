import 'package:flutter/material.dart';

class DetailPageBackground extends StatelessWidget {
  const DetailPageBackground({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double heigth = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: heigth * 0.5,
          color: const Color(0XFFacbfc4),
        ),
        Container(
          height: heigth * 0.5,
          color: Colors.white,
        ),
      ],
    );
  }
}
