import 'package:flutter/material.dart';

class CardOfCar extends StatelessWidget {
  final String carMainImage;
  final String carName;
  final String carEquipment;
  final String carPrice;
  final String carDescription;
  final String carCharacteristics;
  final String carVideo;
  final List carImages;
  const CardOfCar({Key? key, required this.carMainImage, required this.carName, required this.carEquipment, required this.carPrice, required this.carDescription, required this.carCharacteristics, required this.carVideo, required this.carImages}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}
