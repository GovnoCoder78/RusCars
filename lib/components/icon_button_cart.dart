import 'package:flutter/material.dart';
import '../model/cars.dart';
import '../model/cart_list.dart';

class IconButtonCart extends StatefulWidget {
  final int carId;
  final VoidCallback update;
  const IconButtonCart({super.key, required this.carId, required this.update});
  @override
  State<IconButtonCart> createState() => _IconButtonCart(carId);
}
class _IconButtonCart extends State<IconButtonCart> {
  final int carId;

  _IconButtonCart(this.carId);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Корзина',
      icon: const Icon(Icons.shopping_cart),
      selectedIcon: const Icon(Icons.shopping_cart),
      isSelected: carsList[carId].statusCartSelected,
      color: carsList[carId].colorCartButton,
      onPressed: () {
        if (carsList[carId].statusCartSelected == false) {
          carsInCart.add(
              CarsCart(carsInCart.length,
                  carsList[carId].name,
                  carsList[carId].equipment,
                  carsList[carId].price,
                  carsList[carId].characteristics,
                  carsList[carId].description,
                  carsList[carId].video,
                  carsList[carId].images,
                  carsList[carId].statusFavoriteSelected,
                  carsList[carId].colorFavoriteButton,
                  carsList[carId].statusCartSelected,
                  carsList[carId].colorCartButton,
                  carsList[carId].count,
                  carsList[carId].isButtonDisabled
              ));
          carsList[carId].colorCartButton = Colors.blueAccent;
          setState(() {
            carsList[carId].statusCartSelected = !carsList[carId].statusCartSelected;
            widget.update;
          });
        } else {
          carsInCart.removeWhere((element) => element.name == carsList[carId].name);
          carsList[carId].colorCartButton = Colors.black;
          setState(() {
            carsList[carId].statusCartSelected = !carsList[carId].statusCartSelected;
            widget.update;
            var counter = 0;
            while (counter < carsInCart.length) {
              carsInCart[counter].id = counter;
              counter++;
            }
          });
        }
      },
    );
  }
}
