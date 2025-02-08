import 'package:flutter/material.dart';
import 'package:myhealthaura/widgets/app_button_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset("logo/logo.png"),
          const SizedBox(
            height: 80,
          ),
          const Padding(
            padding:
                EdgeInsets.only(top: 10, left: 25, right: 25, bottom: 10),
            child: Text(
              "He who has health has hope, and he who has hope has everything",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          const Text(
            " Get Started !",
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 20),
          AppButtonWidget(
            onPressed: () {
              Navigator.of(context).pushNamed("/secondScreen");
            },
            title: "Login",
            titleColor: Colors.white,
            buttonBackgroundColor: const Color.fromARGB(255, 61, 18, 84),
            buttonBorderColor: Colors.white,
          
          ),
          const SizedBox(
            height: 10,
          ),
          AppButtonWidget(
            onPressed: () {
              Navigator.of(context).pushNamed("/signupscreen");
            },
            title: "Sign Up",
            titleColor: Colors.black,
            buttonBackgroundColor: Colors.white,
            buttonBorderColor: Colors.black,
          ),
        ]),
      ),
    );
  }
}

