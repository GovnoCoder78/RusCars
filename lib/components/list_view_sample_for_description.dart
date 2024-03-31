import 'package:flutter/material.dart';
import 'package:rus_car/model/cars.dart';

class ListViewSampleForDescription extends StatelessWidget {
  final int id;
  const ListViewSampleForDescription({super.key, required this.id});

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
