import 'package:flutter/material.dart';
List<String> carsName = [
  'Машина 1',
  'Машина 2',
  'Машина 3',
  'Машина 4',
  'Машина 5',
  'Машина 6'];
List<String> carsImage = [
  "https://u2.9111s.ru/uploads/202310/22/979ce55d3492f9be202ac17ef6af26bf.jpg",
  "https://s1.1zoom.ru/b5050/116/Russian_cars_Sky_Lada_464507_3840x2160.jpg",
  "https://sportishka.com/uploads/posts/2022-04/1651166439_50-sportishka-com-p-rossiiskie-avtomobili-mashini-krasivo-foto-56.jpg",
  "https://krots.top/uploads/posts/2022-01/1642990345_8-krot-info-p-rossiiskie-avtomobili-9.jpg",
  "https://sportishka.com/uploads/posts/2022-11/1667490791_35-sportishka-com-p-novaya-lada-niva-kross-instagram-39.jpg",
  "https://ivanglazunov.ru/wp-content/uploads/7/b/e/7be4bee156ab6e866813f2bd3489b58c.jpeg"];
List<String> carsEquipment = [
  'STANDARD',
  'CLASSIC',
  'CLASSIC23',
  'CLASSIC23 КОНДИЦИОНЕР',
  'COMFORT23',
  'CLUB23'];
List<String> carsPrice = [
  'Цена: 1000000',
  'Цена: 1200000',
  'Цена: 1400000',
  'Цена: 1600000',
  'Цена: 1800000',
  'Цена: 2000000'];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Российские автомобили',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Российские автомобили",
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
        child: Expanded(
          flex: 1,
          child: GridView.builder(
            padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 1 / 4,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: carsName.length,
              itemBuilder: (BuildContext context, index) {
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
                        carsImage[index],
                      ),
                      ),
                     Expanded(
                       flex: 1,
                       child: Text(
                        carsName[index],
                         style: const TextStyle(
                           fontSize: 30,
                         ),
                         textAlign: TextAlign.center,
                      ),
                     ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          carsEquipment[index],
                          style: const TextStyle(
                              fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Text(
                          carsPrice[index],
                          style: const TextStyle(
                              fontSize: 30,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                );
              }
              ),
          ),
        ),
      );
  }
}
