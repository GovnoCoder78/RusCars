import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rus_car/model/cars.dart';
import 'package:rus_car/pages/card_of_car.dart';
import '../model/favorite_list.dart';
import 'icon_button_cart.dart';
import 'list_view_sample_for_card_of_car.dart';

class GridViewFavoriteSample extends StatefulWidget {
  final int carId;
  const GridViewFavoriteSample({super.key, required this.carId});
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
                  id: carId,
                ),
              ),
            );
          },
          child: Container(
            color: Colors.black12,
            child:Column(
              children: [
                Expanded(
                  flex: 2,
                  child: Image.network(
                    carsList[carId].images[0],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      carsList[carId].name,
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      carsList[carId].equipment,
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '${carsList[carId].price} рублей',
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Consumer<CartModel>(
                          builder: (context, cart, child) {
                            return IconButton(
                              tooltip: 'Избранное',
                              icon: const Icon(Icons.favorite),
                              selectedIcon: const Icon(Icons.favorite),
                              isSelected: cart.favoriteCars.contains(carId),
                              color: cart.favoriteCars.contains(carId) ? Colors.red : Colors.black,
                              onPressed: () {
                                setState(() {
                                  if (cart.favoriteCars.contains(carId)) {
                                    cart.removeFromFavorite(carId);
                                    favoriteCars.removeWhere((element) => element.id == carId);
                                    var counter = 0;
                                    while (counter < favoriteCars.length) {
                                      favoriteCars[counter].id = counter;
                                      counter++;
                                    }
                                  } else {
                                    cart.addToFavorite(carId);
                                    favoriteCars.add(carsList[carId]);
                                  }
                                });
                              },
                            );
                          },
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Купить'),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: IconButtonCart(
                          carId: carId,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
