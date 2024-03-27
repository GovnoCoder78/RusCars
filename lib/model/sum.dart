import 'package:rus_car/model/cart_list.dart';

int sumPriceCarsInCart() {
  int sum = 0;
  int counter = 0;
  while (counter < carsInCart.length) {
    sum = sum + carsInCart[counter].price * carsInCart[counter].count;
    counter++;
  }
  return sum;
}