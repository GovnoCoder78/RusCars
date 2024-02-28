import 'package:flutter/material.dart';

class GridViewSample extends StatelessWidget {
  final String img;
  final String nam;
  final String qpm;
  final String prc;
  const GridViewSample({Key? key, required this.img, required this.nam, required this.qpm, required this.prc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Image.network(
              img,
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
    );
  }
}
