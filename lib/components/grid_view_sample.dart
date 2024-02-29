import 'package:flutter/material.dart';
import 'package:rus_car/pages/card_of_car.dart';

class GridViewSample extends StatelessWidget {
  final String mig;
  final String nam;
  final String qpm;
  final String prc;
  final String dsc;
  final String crt;
  final String vid;
  final List img;
  const GridViewSample({Key? key, required this.mig, required this.nam, required this.qpm, required this.prc, required this.dsc, required this.crt, required this.vid, required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(8)),
      child: Card(
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CardOfCar(
                  carMainImage: mig,
                  carName: nam,
                  carEquipment: qpm,
                  carPrice: prc,
                  carDescription: dsc,
                  carCharacteristics: crt,
                  carVideo: vid,
                  carImages: img,
                ),
              ),
            );
          },
          child: Container(
            height: 200,
            alignment: Alignment.centerLeft,
            color: Colors.black12,
            child:Column(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(
                    mig,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      nam,
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
                      qpm,
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
                      prc,
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
      ),
    );
  }
}
