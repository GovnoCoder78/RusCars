import 'package:flutter/material.dart';
import 'package:rus_car/model/cars.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CardOfCar extends StatelessWidget {
  final int carId;
  const CardOfCar({Key? key, required this.carId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          carsList[carId].name,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.black12,
        child:Column(
          children: [
            Expanded(
              flex: 1,
              child: FlutterCarousel(
                options: CarouselOptions(
                  height: 190,
                ),
                items: [1,2,3].map((number) {
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
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  carsList[carId].name,
                  style: const TextStyle(
                    fontSize: 30,
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
                    fontSize: 30,
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
                  carsList[carId].price,
                  style: const TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Table(
                border: TableBorder.all(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      const Text(
                        'Объем'
                      ),
                      Text(
                          carsList[carId].characteristics[0]
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text(
                          'Топливо'
                      ),
                      Text(
                          carsList[carId].characteristics[1]
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text(
                          'Мощность'
                      ),
                      Text(
                          carsList[carId].characteristics[2]
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text(
                          'Привод'
                      ),
                      Text(
                          carsList[carId].characteristics[3]
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text(
                          'Коробка'
                      ),
                      Text(
                          carsList[carId].characteristics[4]
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text(
                          'Разгон'
                      ),
                      Text(
                          carsList[carId].characteristics[5]
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text(
                          'Тип двигателя'
                      ),
                      Text(
                          carsList[carId].characteristics[6]
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      const Text(
                          'Расход'
                      ),
                      Text(
                          carsList[carId].characteristics[7]
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
