import 'package:flutter/material.dart';
import 'package:rus_car/model/personal_data.dart';
import '../components/bottom_app_bar_sample.dart';
import 'history_pay.dart';

class PersonalAccount extends StatefulWidget {
  const PersonalAccount({super.key});
  @override
  State<PersonalAccount> createState() => _PersonalAccount();
}
class _PersonalAccount extends State<PersonalAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Личный кабинет",
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        backgroundColor: Colors.grey,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(
            personalDataUser[0].photo,
          ),
          Text(
            'Фамилия: ${personalDataUser[0].lastName}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'Имя: ${personalDataUser[0].firstName}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'Отчество: ${personalDataUser[0].patronymic}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'Электронная почта: ${personalDataUser[0].email}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 30,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                  const HistoryPay(
                  ),
                ),
              );
            },
            child: const Text(
              'История покупок',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomAppBarSample(
        homePage: true,
        favorite: true,
        cart: true,
        personalAccount: false,
      ),
    );
  }
}