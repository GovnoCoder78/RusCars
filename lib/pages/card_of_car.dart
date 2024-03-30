import 'package:flutter/material.dart';
import 'package:rus_car/components/bottom_app_bar_sample.dart';
import 'package:rus_car/components/list_view_sample_for_card_of_car.dart';
import 'package:rus_car/model/cars.dart';

class CardOfCar extends StatefulWidget {
  final int id;
  final VoidCallback update;
  const CardOfCar({super.key, required this.id, required this.update});
  @override
  State<CardOfCar> createState() => _CardOfCar(id);
}
class _CardOfCar extends State<CardOfCar> {
  final int id;
  _CardOfCar(this.id);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          carsList[id].name,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Expanded(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return ListViewSampleForCardOfCar(
              carId: id,
              update: widget.update,
            );
          },
        ),
      ),
      bottomNavigationBar: const BottomAppBarSample(
        homePage: true,
        favorite: true,
        cart: true,
        historyPay: true,
      ),
    );
  }
}
