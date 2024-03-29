import 'package:flutter/material.dart';
import 'package:rus_car/model/cars.dart';
import '../model/history_pay_list.dart';
import '../pages/history_pay.dart';

class AlertDialogSample extends StatefulWidget {
  final int carId;

  const AlertDialogSample({super.key, required this.carId});

  @override
  _AlertDialogSample createState() => _AlertDialogSample();
}

class _AlertDialogSample extends State<AlertDialogSample> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Expanded(
        child: Text(
          'Подтверждение покупки',
        ),
      ),
      content: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
              carsList[widget.carId].images[0],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Expanded(
                child: Text(
                  carsList[widget.carId].name,
                  style: const TextStyle(
                    fontSize: 21,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Expanded(
                child: Text(
                  carsList[widget.carId].equipment,
                  style: const TextStyle(
                    fontSize: 21,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: carsList[widget.carId].isButtonDisabled ? null : () {
                      if (carsList[widget.carId].count < 1) {}
                      else if (carsList[widget.carId].count == 2) {
                        carsList[widget.carId].isButtonDisabled = true;
                        setState(() {
                          carsList[widget.carId].count--;
                        });
                      }
                      else {
                        setState(() {
                          carsList[widget.carId].count--;
                        });
                      }
                    },
                    child: const Expanded(
                      child: Text(
                        '-',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    carsList[widget.carId].count.toString(),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        carsList[widget.carId].count++;
                        carsList[widget.carId].isButtonDisabled = false;
                      });
                    },
                    child: const Expanded(
                      child: Text(
                        '+',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.center,
              child: Expanded(
                child: Text(
                  '${carsList[widget.carId].price * carsList[widget.carId].count} рублей',
                  style: const TextStyle(
                    fontSize: 21,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          child: const Expanded(
            child: Text(
              'Закрыть',
              style: TextStyle(
                fontSize: 21,
              ),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          onPressed: () {
            if (historyPayCars.indexWhere((element) =>
            element.name == historyPayCars.firstWhere((element) => element.name == carsList[widget.carId].name).name) != -1) {
              historyPayCars[historyPayCars.firstWhere((element) => element.name == carsList[widget.carId].name).id].count =
                  historyPayCars[historyPayCars.firstWhere((element) => element.name == carsList[widget.carId].name).id].count +
                      carsList[widget.carId].count;
            }
            else {
              historyPayCars.add(
                  HistoryCars(historyPayCars.length,
                      carsList[widget.carId].name,
                      carsList[widget.carId].equipment,
                      carsList[widget.carId].price,
                      carsList[widget.carId].characteristics,
                      carsList[widget.carId].description,
                      carsList[widget.carId].video,
                      carsList[widget.carId].images,
                      carsList[widget.carId].statusFavoriteSelected,
                      carsList[widget.carId].colorFavoriteButton,
                      carsList[widget.carId].statusCartSelected,
                      carsList[widget.carId].colorCartButton,
                      carsList[widget.carId].count,
                      carsList[widget.carId].isButtonDisabled
                  )
              );
            }
            carsList[widget.carId].isButtonDisabled = true;
            carsList[widget.carId].count = 1;
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                const HistoryPay(
                ),
              ),
            );
          },
          child: const Expanded(
            child: Text(
              'Купить',
              style: TextStyle(
                fontSize: 21,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
