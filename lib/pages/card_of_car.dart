import 'package:flutter/material.dart';
import 'package:rus_car/components/list_view_sample.dart';
import 'package:rus_car/model/cars.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class CardOfCar extends StatelessWidget {
  final int id;
  const CardOfCar({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          carsList[id].name,
          style: const TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black12,
        child: Expanded(
          flex: 1,
          child: ListView.builder(
            itemCount: 1,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: FlutterCarousel(
                      options: CarouselOptions(
                        height: 240,
                      ),
                      items: [1,2,3].map((number) {
                        return Builder(
                          builder: (BuildContext context) {
                            return Image.network(
                              carsList[id].images[number],
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
                        carsList[id].name,
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
                        carsList[id].price,
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
                          id: id,
                        );
                      },
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: SizedBox(
                      width: 410,
                      height: 410,
                      child: Table(
                        border: TableBorder.all(),
                        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                        columnWidths: const {
                          0: FlexColumnWidth(1),
                          1: FlexColumnWidth(1),
                        },
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
                                  ' ' + carsList[id].characteristics[0],
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
                                child:  Text(
                                  ' ' + carsList[id].characteristics[1],
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
                                  ' ' + carsList[id].characteristics[2],
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
                                  ' ' + carsList[id].characteristics[3],
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
                                child:  Text(
                                  ' Коробка',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  ' ' + carsList[id].characteristics[4],
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
                                child:  Text(
                                  ' Разгон',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child:  Text(
                                  ' ' + carsList[id].characteristics[5],
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
                                child:  Text(
                                  ' Тип двигателя',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child:  Text(
                                  ' ' + carsList[id].characteristics[6],
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
                                child:  Text(
                                  ' Расход',
                                  style: TextStyle(
                                      fontSize: 20
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  ' ' + carsList[id].characteristics[7],
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
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
