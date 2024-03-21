import 'package:flutter/material.dart';
import 'package:rus_car/model/favorite_list.dart';
import 'package:rus_car/components/grid_view_sample.dart';
import 'package:rus_car/pages/cart.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Российские автомобили",
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
        child: Expanded(
          flex: 1,
          child: GridView.builder(
            padding: const EdgeInsets.all(5),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 2 / 3,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5),
            itemCount: favoriteCars.length,
            itemBuilder: (BuildContext context, index) {
              return GridViewSample(
                carId: favoriteCars[index].id,
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
              onPressed: () {},
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
