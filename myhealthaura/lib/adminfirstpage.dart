import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:myhealthaura/widgets/app_button_widget.dart';

class AdminFirstPage extends StatelessWidget {
  const AdminFirstPage({Key? key}) : super(key: key); // Corrected the constructor syntax

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.only(top: 15, bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/inprogess");
                },
                title: "+  Add Doctor Details",
                titleColor: Colors.white,
                buttonBackgroundColor:const Color.fromARGB(255, 61, 18, 84),
                buttonBorderColor: Colors.black,
              ),
              const SizedBox(
                height: 10,
              ),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/inprogess");
                },
                title: "+  Add User Details",
                titleColor: Colors.white,
                buttonBackgroundColor: const Color.fromARGB(255, 61, 18, 84),
                buttonBorderColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}