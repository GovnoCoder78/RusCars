import 'dart:ui';

class CarsFavorite {
  int id;
  String name;
  String equipment;
  int price;
  String description;
  List characteristics;
  String video;
  List images;
  bool statusFavoriteSelected;
  Color colorFavoriteButton;
  bool statusCartSelected;
  Color colorCartButton;
  int count;
  bool isButtonDisabled;

  CarsFavorite(
      this.id,
      this.name,
      this.equipment,
      this.price,
      this.characteristics,
      this.description,
      this.video,
      this.images,
      this.statusFavoriteSelected,
      this.colorFavoriteButton,
      this.statusCartSelected,
      this.colorCartButton,
      this.count,
      this.isButtonDisabled
      );
}

List<CarsFavorite> favoriteCars = [];