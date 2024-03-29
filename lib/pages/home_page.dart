import 'package:flutter/material.dart';
import 'package:rus_car/components/bottom_app_bar_sample.dart';
import 'package:rus_car/components/grid_view_sample.dart';
import 'package:rus_car/model/cars.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePage();
}
class _HomePage extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Expanded(
            child: Text(
              "Российские автомобили",
              style: TextStyle(
                fontSize: 26,
              ),
            ),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black26,
        child: Expanded(
          flex: 1,
          child: GridView.builder(
            padding: const EdgeInsets.all(5),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: carsList.length,
            itemBuilder: (BuildContext context, index) {
              return GridViewSample(
                carId: carsList[index].id,
                update: update,
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: const BottomAppBarSample(
        homePage: false,
        favorite: true,
        cart: true,
        historyPay: true,
      ),
    );
  }
  void update() {
    setState(() {});
  }
}
