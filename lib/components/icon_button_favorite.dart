import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cars.dart';
import '../model/favorite_list.dart';
import 'list_view_sample_for_card_of_car.dart';

class IconButtonFavorite extends StatelessWidget {
  final int carId;
  const IconButtonFavorite({super.key, required this.carId});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) {
        return IconButton(
          tooltip: 'Избранное',
          icon: const Icon(Icons.favorite),
          selectedIcon: const Icon(Icons.favorite),
          isSelected: cart.favoriteCars.contains(carId),
          color: cart.favoriteCars.contains(carId) ? Colors.red : Colors.black,
          onPressed: () {
            if (cart.favoriteCars.contains(carId)) {
              cart.removeFromFavorite(carId);
              favoriteCars.removeWhere((element) => element.id == carId);
            } else {
              cart.addToFavorite(carId);
              favoriteCars.add(carsList[carId]);
            }
          },
        );
      },
    );
  }
}
