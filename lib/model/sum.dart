import 'package:rus_car/model/cart_list.dart';
import 'package:flutter/material.dart';

class sumPriceCarsInCart extends StatefulWidget {
  int carId;
  sumPriceCarsInCart({super.key, required this.carId});

  @override
  State<sumPriceCarsInCart> createState() => _sumPriceCarsInCart(carId);
}

class _sumPriceCarsInCart extends State<sumPriceCarsInCart> {
  final int carId;
  _sumPriceCarsInCart(this.carId);

  @override
  Widget build(BuildContext context) {
    return Text(
        sumPriceCarsInCart2.toString(),
    );
  }
}

int sumPriceCarsInCart2() {
  int sum = 0;
  int counter = 0;
  while (counter < carsInCart.length) {
    sum = sum + carsInCart[counter].price * carsInCart[counter].count;
    counter++;
  }
  return sum;
}