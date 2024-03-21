import 'package:flutter/material.dart';
import 'package:rus_car/components/list_view_sample_for_card_of_car.dart';
import 'package:rus_car/model/cars.dart';
import 'package:rus_car/pages/cart.dart';
import 'package:rus_car/pages/favorite.dart';
import 'package:rus_car/pages/home_page.dart';

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
      bottomNavigationBar: BottomAppBar(
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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              width: 70,
            ),
            IconButton(
              tooltip: 'Избранное',
              icon: const Icon(Icons.favorite),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Favorite(
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              width: 70,
            ),
            IconButton(
              tooltip: 'Корзина',
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Cart(
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}