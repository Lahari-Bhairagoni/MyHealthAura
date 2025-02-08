import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:myhealthaura/widgets/app_button_widget.dart';
// ignore: unused_import
import 'package:myhealthaura/widgets/app_input_textfield_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _namecontroller = TextEditingController();
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _agecontroller = TextEditingController();
  final TextEditingController _phonenumbercontroller = TextEditingController();
  final TextEditingController _addresscontroller = TextEditingController();
  final TextEditingController _passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Patient Registration Page")),
      body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.only(left:25, right: 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                AppInputTextfieldWidget(
                    controller: _namecontroller,
                    title: "Name",
                    hitText: "User name"),
                const SizedBox(
                  height: 5,
                ),
                AppInputTextfieldWidget(
                    controller: _emailcontroller,
                    title: "Email Address",
                    hitText: "username@gmail.com"),
                const SizedBox(
                  height: 5,
                ),
                AppInputTextfieldWidget(
                    controller: _agecontroller, title: "Age", hitText: "xx"),
                const SizedBox(
                  height: 5,
                ),
                AppInputTextfieldWidget(
                    controller: _phonenumbercontroller,
                    title: "Phone Number",
                    hitText: "1234567890"),
                const SizedBox(
                  height: 5,
                ),
                AppInputTextfieldWidget(
                  controller: _addresscontroller,
                  title: "Address",
                  hitText: 'Enter Address',
                ),
                const SizedBox(
                  height: 5,
                ),
                AppInputTextfieldWidget(
                    controller: _passwordcontroller,
                    title: "Password",
                    hitText: "enter password"),
                const SizedBox(
                  height: 5,
                ),
                AppButtonWidget(
                  onPressed: () {},
                  title: "Create Account",
                  titleColor: Colors.white,
                  buttonBackgroundColor: const Color.fromARGB(255, 61, 18, 84),
                  buttonBorderColor: Colors.transparent,
                ),
              
              ],
            ),
          )),
    );
  }
}
