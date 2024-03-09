import 'package:flutter/material.dart';
import 'package:rus_car/model/cars.dart';

class ListViewSample extends StatelessWidget {
  final int id;
  const ListViewSample({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Text(
      carsList[id].description,
      style: const TextStyle(
        fontSize: 20,
      ),
    );
  }
}
