import 'package:flutter/material.dart';
import 'package:rus_car/components/alert_dialog_sample.dart';

class ElevatedButtonBuySample extends StatefulWidget {
  final int carId;

  const ElevatedButtonBuySample({super.key, required this.carId});

  @override
  State<ElevatedButtonBuySample> createState() => _ElevatedButtonBuySample(carId);
}

class _ElevatedButtonBuySample extends State<ElevatedButtonBuySample> {
  final int carId;
  _ElevatedButtonBuySample(this.carId);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialogSample(
                carId: carId,
            );
          },
        );
      },
      child: const Text(
          'Купить',
        ),
    );
  }
}