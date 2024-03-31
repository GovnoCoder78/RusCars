import 'package:flutter/material.dart';
import 'package:rus_car/components/elevated_button_buy_sample.dart';
import 'package:rus_car/model/cars.dart';
import 'package:rus_car/pages/card_of_car.dart';
import '../model/favorite_list.dart';
import 'icon_button_cart.dart';

class GridViewFavoriteSample extends StatefulWidget {
  final int carId;
  final VoidCallback update;
  const GridViewFavoriteSample({super.key, required this.carId, required this.update});
  @override
  State<GridViewFavoriteSample> createState() => _GridViewFavoriteSample(carId);
}
class _GridViewFavoriteSample extends State<GridViewFavoriteSample> {
  final int carId;
  _GridViewFavoriteSample(this.carId);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardOfCar(
                  id: carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id,
                  update: widget.update,
                ),
              ),
            );
          },
          child: Container(
            color: Colors.black12,
            child:Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Image.network(
                    favoriteCars[carId].images[0],
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      favoriteCars[carId].name,
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      favoriteCars[carId].equipment,
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '${favoriteCars[carId].price} рублей',
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: IconButton(
                          tooltip: 'Избранное',
                          icon: const Icon(Icons.favorite),
                          selectedIcon: const Icon(Icons.favorite),
                          isSelected: carsList[carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id].statusFavoriteSelected,
                          color: carsList[carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id].colorFavoriteButton,
                          onPressed: () {
                            setState(() {
                              var id = carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id;
                              carsList[id].statusFavoriteSelected = false;
                              carsList[id].colorFavoriteButton = Colors.black;
                              favoriteCars.removeWhere((element) => element.id == carId);
                              widget.update();
                              var counter = 0;
                              while (counter < favoriteCars.length) {
                                favoriteCars[counter].id = counter;
                                counter++;
                              }
                            });
                          }
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: ElevatedButtonBuySample(
                        carId: carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id,
                      ),
                    ),
                    Expanded(
                      child: IconButtonCart(
                        carId: carsList.firstWhere((element) => element.name == favoriteCars[carId].name).id,
                        update: widget.update,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
