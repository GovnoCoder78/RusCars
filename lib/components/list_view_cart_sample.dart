import 'package:flutter/material.dart';
import 'package:rus_car/model/cart_list.dart';
import 'package:rus_car/pages/card_of_car.dart';
import '../model/cars.dart';

class ListViewCartSample extends StatefulWidget {
  final int carId;
  final VoidCallback updateSum;
  const ListViewCartSample(
      {super.key, required this.carId, required this.updateSum});
  @override
  State<ListViewCartSample> createState() => _ListViewCartSample(carId);
}
class _ListViewCartSample extends State<ListViewCartSample> {
  final int carId;
  _ListViewCartSample(this.carId);
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
                id: carsList.firstWhere((element) => element.name == carsInCart[carId].name).id,
                update: widget.updateSum,
              ),
            ),
          );
        },
        child: Container(
          color: Colors.black12,
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: SizedBox(
                  height: 150,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.network(
                          carsInCart[carId].images[0],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            carsInCart[carId].name,
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: SizedBox(
                  height: 150,
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          width: 160,
                          child: Row(
                            children: [
                              Expanded(
                                child: TextButton(
                                  onPressed: carsInCart[carId].isButtonDisabled ? null : () {
                                    if (carsInCart[carId].count < 1) {}
                                    else if (carsInCart[carId].count == 2) {
                                      carsInCart[carId].isButtonDisabled = true;
                                      setState(() {
                                        carsInCart[carId].count--;
                                        widget.updateSum();
                                      });
                                    }
                                    else {
                                      setState(() {
                                        carsInCart[carId].count--;
                                        widget.updateSum();
                                      });
                                    }
                                  },
                                  child: const Text(
                                    '-',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  carsInCart[carId].count.toString(),
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 25,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      carsInCart[carId].count++;
                                      widget.updateSum();
                                      carsInCart[carId].isButtonDisabled = false;
                                    });
                                  },
                                  child: const Text(
                                    '+',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 40,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            '${carsInCart[carId].price * carsInCart[carId].count} рублей',
                            style: const TextStyle(
                              fontSize: 25,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      var id = carsList.firstWhere((element) => element.name == carsInCart[carId].name).id;
                      carsList[id].statusCartSelected = false;
                      carsList[id].colorCartButton = Colors.black;
                      carsInCart.removeWhere((element) => element.id == carId);
                      widget.updateSum();
                      var counter = 0;
                      while (counter < carsInCart.length) {
                        carsInCart[counter].id = counter;
                        counter++;
                      }
                    });
                  },
                  child: const Text(
                    'X',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
