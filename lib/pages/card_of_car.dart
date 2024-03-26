import 'package:flutter/material.dart';
import 'package:rus_car/components/bottom_app_bar_sample.dart';
import 'package:rus_car/components/list_view_sample_for_card_of_car.dart';
import 'package:rus_car/model/cars.dart';

class CardOfCar extends StatelessWidget {
  final int id;
  const CardOfCar({Key? key, required this.id}) : super(key: key);

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
      body: Container(
        alignment: Alignment.center,
        color: Colors.black12,
        child: Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return ListViewSampleForCardOfCar(
                carId: id,
              );
            },
          ),
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
