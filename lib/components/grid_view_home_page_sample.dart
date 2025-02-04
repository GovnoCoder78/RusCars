import 'package:flutter/material.dart';
import 'package:rus_car/components/elevated_button_buy_sample.dart';
import 'package:rus_car/model/cars.dart';
import 'package:rus_car/pages/card_of_car.dart';
import 'icon_button_cart.dart';
import 'icon_button_favorite.dart';

class GridViewHomePageSample extends StatefulWidget {
  final int carId;
  final VoidCallback update;
  const GridViewHomePageSample({super.key, required this.carId, required this.update});
  @override
  State<GridViewHomePageSample> createState() => _GridViewHomePageSample(carId);
}
class _GridViewHomePageSample extends State<GridViewHomePageSample> {
  final int carId;
  _GridViewHomePageSample(this.carId);
  @override
  Widget build(BuildContext context) {
    return Card(
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
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.network(
                  carsList[carId].images[0],
                  fit: BoxFit.cover,
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
                    overflow: TextOverflow.ellipsis,
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
                    overflow: TextOverflow.ellipsis,
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
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IconButtonFavorite(
                      carId: carId,
                      update: widget.update,
                    ),
                    ElevatedButtonBuySample(
                      carId: carId,
                    ),
                    IconButtonCart(
                      carId: carId,
                      update: widget.update,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
