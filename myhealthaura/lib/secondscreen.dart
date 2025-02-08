import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:myhealthaura/widgets/app_button_widget.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key); // Corrected the constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login As")),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "logo/logo.png",
                width: 300,
                height: 300,
              ),
              const SizedBox(
                height: 5,
              ),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/LoginScreen");
                },
                title: "USER",
                titleColor: Colors.white,
                buttonBackgroundColor: const Color.fromARGB(255, 61, 18, 84),
                buttonBorderColor: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/doctorlogin");
                },
                title: "DOCTOR",
                titleColor: Colors.white,
                buttonBackgroundColor: const Color.fromARGB(255, 61, 18, 84),
                buttonBorderColor: Colors.white,
              ),
              const SizedBox(
                height: 10,
              ),
              AppButtonWidget (
               onPressed: () {
                Navigator.of(context).pushNamed("/adminlogin");
               },
                title: "ADMIN",
                titleColor: Colors.white,
                buttonBackgroundColor: const Color.fromARGB(255, 61, 18, 84),
                buttonBorderColor: Colors.white, 
              ),
            ],
          ),
        ),
      ),
    );
  }
}