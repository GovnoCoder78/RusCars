import 'package:flutter/material.dart';
import 'package:rus_car/components/bottom_app_bar_sample.dart';
import 'package:rus_car/components/grid_view_cart_sample.dart';
import 'package:rus_car/model/cart_list.dart';
import 'package:rus_car/model/history_pay_list.dart';
import 'package:rus_car/model/sum.dart';
import 'package:rus_car/pages/history_pay.dart';
import '../model/cars.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _Cart();
}

class _Cart extends State<Cart> {
  int sum = 0;
  @override
  void initState() {
    super.initState();
    sum = sumPriceCarsInCart();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "Корзина",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        color: Colors.black26,
        child: Column(
          children: [
            GridView.builder(
                padding: const EdgeInsets.all(5),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 0.55,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: carsInCart.length,
                itemBuilder: (BuildContext context, index) {
                  return GridViewCartSample(
                    carId: carsInCart[index].id,
                    updateSum: updateSum,
                  );
                },
              ),
            Text(
                '$sum рублей',
                style: const TextStyle(
                  fontSize: 30,
                ),
              ),
            ElevatedButton(
                      onPressed: () {
                        setState(() {
                          var counter = 0;
                          while (counter < carsInCart.length) {
                            var existingCar = historyPayCars.where((element) => element.name == carsInCart[counter].name);
                            if (existingCar.isNotEmpty) {
                              historyPayCars[historyPayCars.firstWhere((element) => element.name == carsInCart[counter].name).id].count =
                                  historyPayCars[historyPayCars.firstWhere((element) => element.name == carsInCart[counter].name).id].count +
                                      carsInCart[counter].count;
                              var id = carsList.firstWhere((element) => element.name == carsInCart[counter].name).id;
                              carsList[id].statusCartSelected = false;
                              carsList[id].colorCartButton = Colors.black;
                              counter++;
                            }
                            else {
                              historyPayCars.add(
                                  HistoryCars(historyPayCars.length,
                                      carsInCart[counter].name,
                                      carsInCart[counter].equipment,
                                      carsInCart[counter].price,
                                      carsInCart[counter].characteristics,
                                      carsInCart[counter].description,
                                      carsInCart[counter].video,
                                      carsInCart[counter].images,
                                      carsInCart[counter].statusFavoriteSelected,
                                      carsInCart[counter].colorFavoriteButton,
                                      carsInCart[counter].statusCartSelected,
                                      carsInCart[counter].colorCartButton,
                                      carsInCart[counter].count,
                                      carsInCart[counter].isButtonDisabled
                                  )
                              );
                              var id = carsList.firstWhere((element) => element.name == carsInCart[counter].name).id;
                              carsList[id].statusCartSelected = false;
                              carsList[id].colorCartButton = Colors.black;
                              counter++;
                            }
                          }
                          carsInCart.removeWhere((element) => true);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                              const HistoryPay(
                              ),
                            ),
                          );
                        });
                      },
                      child: const Text(
                            'Купить',
                            style: TextStyle(
                              fontSize: 30,
                            ),
                      ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBarSample(
        homePage: true,
        favorite: true,
        cart: false,
        historyPay: true,
      ),
    );
  }
  void updateSum() {
    setState(() {
      sum = sumPriceCarsInCart();
    });
  }
}

