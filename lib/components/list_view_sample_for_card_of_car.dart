import 'package:flutter/material.dart';
import 'package:rus_car/components/list_view_sample_for_description.dart';
import 'package:rus_car/model/cars.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:rus_car/model/youtube.dart';

class ListViewSampleForCardOfCar extends StatelessWidget {
  final int carId;
  const ListViewSampleForCardOfCar({super.key, required this.carId});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SizedBox(
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
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  carsList[carId].name,
                  style: const TextStyle(
                    fontSize: 25,
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
              flex: 5,
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
                          ' ' + carsList[carId].characteristics[0],
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
                          ' ' + carsList[carId].characteristics[1],
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
                          ' ' + carsList[carId].characteristics[2],
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
                          ' ' + carsList[carId].characteristics[3],
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
                          ' ' + carsList[carId].characteristics[4],
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
                          ' ' + carsList[carId].characteristics[5],
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
                          ' ' + carsList[carId].characteristics[6],
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
                          ' ' + carsList[carId].characteristics[7],
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
          ],
        ),
      ),
    );
  }
}
