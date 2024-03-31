import 'package:flutter/material.dart';
import 'package:rus_car/components/elevated_button_buy_sample.dart';
import 'package:rus_car/components/icon_button_favorite.dart';
import 'package:rus_car/components/list_view_sample_for_description.dart';
import 'package:rus_car/model/cars.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:rus_car/model/youtube.dart';
import 'icon_button_cart.dart';

class ListViewSampleForCardOfCar extends StatefulWidget {
  final int carId;
  final VoidCallback update;
  const ListViewSampleForCardOfCar({super.key, required this.carId, required this.update});
  @override
  State<ListViewSampleForCardOfCar> createState() => _ListViewSampleForCardOfCarState(carId);
}
class _ListViewSampleForCardOfCarState extends State<ListViewSampleForCardOfCar> {
  final int carId;
  _ListViewSampleForCardOfCarState(this.carId);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FlutterCarousel(
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
          Text(
            carsList[carId].name,
            style: const TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            '${carsList[carId].price} рублей',
            style: const TextStyle(
              fontSize: 25,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 200,
            child: ListViewSampleForDescription(
              id: carId,
            ),
          ),
          Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              TableRow(
                children: [
                  const Text(
                    ' Объем',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    ' ${carsList[carId].characteristics[0]}',
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    ' Топливо',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    ' ${carsList[carId].characteristics[1]}',
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    ' Мощность',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    ' ${carsList[carId].characteristics[2]}',
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    ' Привод',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    ' ${carsList[carId].characteristics[3]}',
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    ' Коробка',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    ' ${carsList[carId].characteristics[4]}',
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    ' Разгон',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    ' ${carsList[carId].characteristics[5]}',
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    ' Тип двигателя',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    ' ${carsList[carId].characteristics[6]}',
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                ],
              ),
              TableRow(
                children: [
                  const Text(
                    ' Расход',
                    style: TextStyle(
                        fontSize: 20
                    ),
                  ),
                  Text(
                    ' ${carsList[carId].characteristics[7]}',
                    style: const TextStyle(
                        fontSize: 20
                    ),
                  ),
                ],
              ),
            ],
          ),
          Video(
              id: carId
          ),
          Row(
            children: [
              Expanded(
                child: IconButtonFavorite(
                  carId: carId,
                  update: widget.update,
                ),
              ),
              Expanded(
                flex: 5,
                child: ElevatedButtonBuySample(
                  carId: carId,
                ),
              ),
              Expanded(
                child: IconButtonCart(
                  carId: carId,
                  update: widget.update,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
