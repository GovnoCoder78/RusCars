import 'package:flutter/material.dart';
import '../model/cars.dart';
import '../model/favorite_list.dart';

class IconButtonFavorite extends StatefulWidget {
  final int carId;
  final VoidCallback update;
  const IconButtonFavorite({super.key, required this.carId, required this.update});
  @override
  State<IconButtonFavorite> createState() => _IconButtonFavorite(carId);
}
class _IconButtonFavorite extends State<IconButtonFavorite> {
  final int carId;
  _IconButtonFavorite(this.carId);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        tooltip: 'Избранное',
        icon: const Icon(Icons.favorite),
        selectedIcon: const Icon(Icons.favorite),
        isSelected: carsList[carId].statusFavoriteSelected,
        color: carsList[carId].colorFavoriteButton,
        onPressed: () {
          if (carsList[carId].statusFavoriteSelected == false) {
            favoriteCars.add(
                CarsFavorite(favoriteCars.length,
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
            carsList[carId].colorFavoriteButton = Colors.red;
            setState(() {
              carsList[carId].statusFavoriteSelected =
              !carsList[carId].statusFavoriteSelected;
              widget.update;
            });
          } else {
            favoriteCars.removeWhere((element) => element.name == carsList[carId].name);
            carsList[carId].colorFavoriteButton = Colors.black;
            setState(() {
              carsList[carId].statusFavoriteSelected =
              !carsList[carId].statusFavoriteSelected;
              widget.update;
              var counter = 0;
              while (counter < favoriteCars.length) {
                favoriteCars[counter].id = counter;
                counter++;
              }
            });
          }
        }
    );
  }
}
