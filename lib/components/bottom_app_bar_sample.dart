import 'package:flutter/material.dart';
import 'package:rus_car/pages/cart.dart';
import 'package:rus_car/pages/favorite.dart';
import 'package:rus_car/pages/history_pay.dart';
import 'package:rus_car/pages/home_page.dart';

class BottomAppBarSample extends StatelessWidget {
  final bool homePage;
  final bool favorite;
  final bool cart;
  final bool historyPay;
  const BottomAppBarSample({Key? key,
    required this.homePage,
    required this.favorite,
    required this.cart,
    required this.historyPay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blueGrey,
      child: Row(
        children: [
          Expanded(
              child: IconButton(
                tooltip: 'Главная',
                icon: const Icon(Icons.car_crash),
                onPressed: () {
                  if (homePage == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(
                        ),
                      ),
                    );
                  }
                },
              ),
          ),
          Expanded(
              child: IconButton(
                tooltip: 'Избранное',
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  if (favorite == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                        const Favorite(
                        ),
                      ),
                    );
                  }
                },
              ),
          ),
           Expanded(
               child: IconButton(
                 tooltip: 'Корзина',
                 icon: const Icon(Icons.shopping_cart),
                 onPressed: () {
                   if (cart == true) {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) =>
                         const Cart(
                         ),
                       ),
                     );
                   }
                 },
               ),
           ),
           Expanded(
               child: IconButton(
                 tooltip: 'История покупок',
                 icon: const Icon(Icons.history),
                 onPressed: () {
                   if (historyPay == true) {
                     Navigator.push(
                       context,
                       MaterialPageRoute(
                         builder: (context) =>
                         const HistoryPay(
                         ),
                       ),
                     );
                   }
                 },
               ),
           ),
        ],
      ),
    );
  }
}