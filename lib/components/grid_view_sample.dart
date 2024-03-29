import 'package:flutter/material.dart';
import 'package:rus_car/model/cars.dart';
import 'package:rus_car/pages/card_of_car.dart';
import 'icon_button_cart.dart';
import 'icon_button_favorite.dart';

class GridViewSample extends StatefulWidget {
  int carId;
  final VoidCallback update;
  GridViewSample({super.key, required this.carId, required this.update});
  @override
  State<GridViewSample> createState() => _GridViewSample(carId);
}
class _GridViewSample extends State<GridViewSample> {
  final int carId;

  _GridViewSample(this.carId);

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
                        child: IconButtonFavorite(
                          carId: carId,
                          update: widget.update,
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
                          update: widget.update,
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
