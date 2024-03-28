import 'package:flutter/material.dart';

class HistoryCars {
  int id;
  String name;
  String equipment;
  int price;
  String description;
  List characteristics;
  String video;
  List images;
  int count;
  bool isButtonDisabled;

  HistoryCars(
      this.id,
      this.name,
      this.equipment,
      this.price,
      this.characteristics,
      this.description,
      this.video,
      this.images,
      this.count,
      this.isButtonDisabled
      );
}

List<HistoryCars> historyPayCars = [];