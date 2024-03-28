import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rus_car/components/list_view_sample_for_description.dart';
import 'package:rus_car/model/cars.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:rus_car/model/cart_list.dart';
import 'package:rus_car/model/favorite_list.dart';
import 'package:rus_car/model/youtube.dart';

class ListViewSampleForCardOfCar extends StatefulWidget {
  int carId;
  ListViewSampleForCardOfCar({super.key, required this.carId});
  @override
  State<ListViewSampleForCardOfCar> createState() => _ListViewSampleForCardOfCarState(carId);
}
class _ListViewSampleForCardOfCarState extends State<ListViewSampleForCardOfCar> {
  final int carId;
  _ListViewSampleForCardOfCarState(this.carId);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 900,
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: FlutterCarousel(
              options: CarouselOptions(
                height: 240,
              ),
              items: [1, 2, 3].map((number) {
                return Builder(
                  builder: (BuildContext context) {
                    return Image.network(
                      carsList[carId].images[number],
                    );
                  },
                );
              },
              ).toList(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              carsList[carId].name,
              style: const TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(
              '${carsList[carId].price} рублей',
              style: const TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ListViewSampleForDescription(
                  id: carId,
                );
              },
            ),
          ),
          Expanded(
            flex: 6,
            child: Table(
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        ' Объем',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ' ${carsList[carId].characteristics[0]}',
                        style: const TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Expanded(
                      flex: 1,
                      child:
                      Text(
                        ' Топливо',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ' ${carsList[carId].characteristics[1]}',
                        style: const TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        ' Мощность',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ' ${carsList[carId].characteristics[2]}',
                        style: const TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        ' Привод',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ' ${carsList[carId].characteristics[3]}',
                        style: const TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        ' Коробка',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ' ${carsList[carId].characteristics[4]}',
                        style: const TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        ' Разгон',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ' ${carsList[carId].characteristics[5]}',
                        style: const TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        ' Тип двигателя',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ' ${carsList[carId].characteristics[6]}',
                        style: const TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    const Expanded(
                      flex: 1,
                      child: Text(
                        ' Расход',
                        style: TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Text(
                        ' ${carsList[carId].characteristics[7]}',
                        style: const TextStyle(
                            fontSize: 20
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Video(
              id: carId
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
                  ),
                ),
                Expanded(
                  flex: 5,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Купить'),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Consumer<CartModel>(
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
                                CarsCart(carId,
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
class CartModel with ChangeNotifier {
  final List<int> _carsInCart = [];
  final List<int> _favoriteCars = [];
  List<int> get carsInCart => _carsInCart;
  List<int> get favoriteCars => _favoriteCars;
  void addToCart(int carId) {
    _carsInCart.add(carId);
    notifyListeners();
  }
  void removeFromCart(int carId) {
    _carsInCart.remove(carId);
    notifyListeners();
  }
  void addToFavorite(int carId) {
    _favoriteCars.add(carId);
    notifyListeners();
  }
  void removeFromFavorite(int carId) {
    _favoriteCars.remove(carId);
    notifyListeners();
  }
}
