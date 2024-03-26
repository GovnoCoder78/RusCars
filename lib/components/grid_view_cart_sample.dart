import 'package:flutter/material.dart';
import 'package:rus_car/model/cars.dart';
import 'package:rus_car/model/count_summary_cart.dart';
import 'package:rus_car/pages/card_of_car.dart';
bool isButtonDisabled = true;

class GridViewCartSample extends StatefulWidget {
  int carId;
  GridViewCartSample({super.key, required this.carId});

  @override
  State<GridViewCartSample> createState() => _GridViewCartSample(carId);
}

class _GridViewCartSample extends State<GridViewCartSample> {
  final int carId;
  _GridViewCartSample(this.carId);
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
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: isButtonDisabled ? null : () {
                            if (carsList[carId].count < 1) {}
                            else if (carsList[carId].count == 2) {
                              isButtonDisabled = true;
                              setState(() {
                                carsList[carId].count--;
                              });
                            }
                            else {
                              setState(() {
                                carsList[carId].count--;
                              });
                            }
                          },
                          child: const Text('-'),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          carsList[carId].count.toString(),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              carsList[carId].count++;
                              isButtonDisabled = false;
                            });
                          },
                          child: const Text('+'),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      '${carsList[carId].price * carsList[carId].count} рублей',
                      style: const TextStyle(
                        fontSize: 21,
                      ),
                      textAlign: TextAlign.center,
                    ),
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
