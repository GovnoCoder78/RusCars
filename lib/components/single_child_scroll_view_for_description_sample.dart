import 'package:flutter/material.dart';
import 'package:rus_car/model/cars.dart';

class SingleChildScrollViewForDescriptionSample extends StatelessWidget {
  final int id;
  const SingleChildScrollViewForDescriptionSample({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        carsList[id].description,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }
}
