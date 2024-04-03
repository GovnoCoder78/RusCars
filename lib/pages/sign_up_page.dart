import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rus_car/pages/login_page.dart';
import 'package:toggle_switch/toggle_switch.dart';
import '../components/text_form_field_sample.dart';
import '../model/list_sign_up.dart';
bool? checkedValue;
int? selectedGenderIndex = 0;

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  @override
  _SignUpState createState() => _SignUpState();
}
class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Регистрация",
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
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: const Text(
                  "Для регистрации необходимо заполнить следующие поля:",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              flex: 8,
              child: ListView.builder(
                itemCount: textSignUp.length,
                itemBuilder: (BuildContext context, int index) {
                  return TextFormFieldSample(txt: textSignUp[index]);
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: TextFormField(
                decoration: const InputDecoration(
                  labelText: " Номер телефона",
                ),
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ], // Only numbers can be entered
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: ToggleSwitch(
                  minWidth: 100.0,
                  initialLabelIndex: selectedGenderIndex,
                  cornerRadius: 18.0,
                  totalSwitches: 2,
                  labels: const ['Мужчина', 'Женщина'],
                  onToggle: (index) {
                    setState(() {
                      selectedGenderIndex = index;
                    }
                    );
                  },
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.center,
                child: CheckboxListTile(
                  title: const Text(
                    "Я согласен получать рекламную рассылку на электронную почту",
                  ),
                  value: checkedValue ?? false,
                  onChanged: (newValue) {
                    setState(() {
                      checkedValue = newValue;
                    }
                    );
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Login(),
                      ),
                    );
                  },
                  child: const Text(
                    "Зарегистрироваться",
                    style: TextStyle(
                      fontSize: 37,
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