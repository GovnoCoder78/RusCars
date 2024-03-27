import 'package:flutter/material.dart';
import 'package:rus_car/components/bottom_app_bar_sample.dart';
import 'package:rus_car/components/grid_view_cart_sample.dart';
import 'package:rus_car/model/cart_list.dart';
import 'package:rus_car/model/sum.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _Cart();
}

class _Cart extends State<Cart> {
late int superSum;
  int? update(superSum) {
    setState(() {
      int sum = sumPriceCarsInCart();
      superSum = sum;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Корзина",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black26,
        child: Column(
          children: [
            Expanded(
              flex: 10,
              child: GridView.builder(
                padding: const EdgeInsets.all(5),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 2 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                ),
                itemCount: carsInCart.length,
                itemBuilder: (BuildContext context, index) {
                  return GridViewCartSample(
                    carId: carsInCart[index].id,
                  );
                },
              ),
            ),
            Expanded(
                flex: 1,
                child: Text(
                  '${update(superSum)} рублей',
                ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBarSample(
        homePage: true,
        favorite: true,
        cart: false,
        historyPay: true,
      ),
    );
  }
}
