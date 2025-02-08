import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:myhealthaura/widgets/app_button_widget.dart';

class DoctorLogin extends StatefulWidget {
  const DoctorLogin({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DoctorLoginState createState() => _DoctorLoginState();
}

class _DoctorLoginState extends State<DoctorLogin> {
  bool isVisiblityoff = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Doctor Login")),
      body: Container(
        margin: const EdgeInsets.all(20),
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
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Welcome back Doctor!",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 12,
              ),
              const Text(
                "Enter your credentials to access your account",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(158, 60, 2, 81)),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "User Name",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "User Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    obscureText: isVisiblityoff,
                    decoration: InputDecoration(
                      hintText: "password",
                      suffixIcon: InkWell(
                          onTap: () {
                            if (isVisiblityoff == true) {
                              setState(() {
                                isVisiblityoff = false;
                              });
                            } else {
                              setState(() {
                                isVisiblityoff = true;
                              });
                            }
                          },
                          child: isVisiblityoff == true
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility)),
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
                  TextButton(onPressed: () {}, child: const Text("Forgot Password?")),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("/patientlist");
                  },
                  child: Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 61, 18, 84),
                          borderRadius: BorderRadius.circular(15.5),
                          border: Border.all(
                            width: 1,
                          )),
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 15,color: Color.fromARGB(255, 241, 235, 243)),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
