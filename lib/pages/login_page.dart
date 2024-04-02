import 'package:flutter/material.dart';
import 'package:rus_car/pages/home_page.dart';
import '../components/text_form_field_sample.dart';
import '../model/list_login.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Авторизация",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),
      body: Container(
        color: Colors.black26,
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "Для авторизации необходимо заполнить следующие поля:",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child:  ListView.builder(
                itemCount: textLogin.length,
                itemBuilder: (BuildContext context, int index)
                {
                  return TextFormFieldSample(
                    txt: textLogin[index],
                  );
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    "Авторизоваться",
                    style: TextStyle(
                      fontSize: 38,
                      color: Colors.deepPurpleAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}