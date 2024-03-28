import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/cars.dart';
import '../model/cart_list.dart';
import 'list_view_sample_for_card_of_car.dart';

class IconButtonCart extends StatelessWidget {
  final int carId;
  const IconButtonCart({super.key, required this.carId});

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) {
        return IconButton(
          tooltip: 'Корзина',
          icon: const Icon(Icons.shopping_cart),
          selectedIcon: const Icon(Icons.shopping_cart),
          isSelected: cart.carsInCart.contains(carId),
          color: cart.carsInCart.contains(carId) ? Colors.blueAccent : Colors.black,
          onPressed: () {
            if (cart.carsInCart.contains(carId)) {
              cart.removeFromCart(carId);
              carsInCart.removeWhere((element) => element.id == carId);
            } else {
              cart.addToCart(carId);
              carsInCart.add(
                  CarsCart(carsInCart.length,
                      carsList[carId].name,
                      carsList[carId].equipment,
                      carsList[carId].price,
                      carsList[carId].characteristics,
                      carsList[carId].description,
                      carsList[carId].video,
                      carsList[carId].images,
                      carsList[carId].count,
                      carsList[carId].isButtonDisabled
                  ));
            }
          },
        );
      },
    );
  }
}
