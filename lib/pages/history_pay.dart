import 'package:flutter/material.dart';
import 'package:rus_car/components/bottom_app_bar_sample.dart';
import 'package:rus_car/components/grid_view_history_pay_sample.dart';
import 'package:rus_car/model/history_pay_list.dart';

class HistoryPay extends StatefulWidget {
  const HistoryPay({super.key});
  @override
  State<HistoryPay> createState() => _HistoryPay();
}
class _HistoryPay extends State<HistoryPay> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
              "История покупок",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body:
          GridView.builder(
            padding: const EdgeInsets.all(5),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 0.55,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: historyPayCars.length,
            itemBuilder: (BuildContext context, index) {
              return GridViewHistoryPaySample(
                carId: historyPayCars[index].id,
                update: update,
              );
            },
          ),
      bottomNavigationBar: const BottomAppBarSample(
        homePage: true,
        favorite: true,
        cart: true,
        historyPay: false,
      ),
    );
  }
  void update() {
    setState(() {});
  }
}
