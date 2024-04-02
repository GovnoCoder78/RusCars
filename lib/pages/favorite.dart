import 'package:flutter/material.dart';
import 'package:rus_car/components/bottom_app_bar_sample.dart';
import 'package:rus_car/components/grid_view_favorite_sample.dart';
import 'package:rus_car/model/favorite_list.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});
  @override
  State<Favorite> createState() => _Favorite();
}
class _Favorite extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Избранное",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body:  GridView.builder(
        padding: const EdgeInsets.all(5),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.55,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemCount: favoriteCars.length,
        itemBuilder: (BuildContext context, index) {
          return GridViewFavoriteSample(
            carId: favoriteCars[index].id,
            update: update,
          );
        },
      ),
      bottomNavigationBar: const BottomAppBarSample(
        homePage: true,
        favorite: false,
        cart: true,
        personalAccount: true,
      ),
    );
  }
  void update() {
    setState(() {});
  }
}
