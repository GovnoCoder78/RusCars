import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rus_car/pages/home_page.dart';

import 'components/list_view_sample_for_card_of_car.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: const MyApp(),
  ),
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Российские автомобили',
      home: HomePage(),
    );
  }
}
// class CartModel extends ChangeNotifier {
//   final List<Cars> _carsInCart = [];
//   List<Cars> get carsInCart => _carsInCart;
//   void addToCart(Cars cars) {
//     _carsInCart.add(cars);
//     notifyListeners();
//   }
//   void removeFromCart(Cars cars) {
//     _carsInCart.remove(cars);
//     notifyListeners();
//   }
// }
