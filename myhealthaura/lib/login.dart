import 'package:flutter/material.dart';
import 'package:myhealthaura/widgets/app_button_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isVisibilityOff = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Patient Login Page")),
      body: Container(
        margin: const EdgeInsets.all(10),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "logo/logo.png",
                width: 200,
                height: 200,
              ),
              const SizedBox(height: 0),
              const Text(
                "Welcome back!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 15),
              const Text(
                "Enter your credentials to access your account",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(15, 15, 15, 1),
                ),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login ID",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "xxxxxxx",
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    obscureText: isVisibilityOff,
                    decoration: InputDecoration(
                      hintText: "password",
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 12,
                        horizontal: 16,
                      ),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            isVisibilityOff = !isVisibilityOff;
                          });
                        },
                        child: Icon(
                          isVisibilityOff
                              ? Icons.visibility_off
                              : Icons.visibility,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Forgot Password?"),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed("/homePage");
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 280,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 61, 18, 84),
                    borderRadius: BorderRadius.circular(15.5),
                    border: Border.all(
                      width: 1,
                    ),
                  ),
                  child: AppButtonWidget(
                    onPressed: () {
                      Navigator.of(context).pushNamed("/homePage");
                    },
                    title: "Login",
                    titleColor: Colors.white,
                    buttonBackgroundColor: const Color.fromARGB(255, 61, 18, 84),
                    buttonBorderColor: Color.fromARGB(0, 18, 0, 33),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
