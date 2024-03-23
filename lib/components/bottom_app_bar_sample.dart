import 'package:flutter/material.dart';
import 'package:rus_car/pages/cart.dart';
import 'package:rus_car/pages/favorite.dart';
import 'package:rus_car/pages/home_page.dart';

class BottomAppBarSample extends StatelessWidget {
  final bool homePage;
  final bool favorite;
  final bool cart;
  const BottomAppBarSample({Key? key, required this.homePage, required this.favorite, required this.cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blueGrey,
      child: Row(
        children: [
          const SizedBox(
            width: 47,
          ),
          IconButton(
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
          const SizedBox(
            width: 70,
          ),
          IconButton(
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
          const SizedBox(
            width: 70,
          ),
          IconButton(
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
        ],
      ),
    );
  }
}