import 'package:flutter/material.dart';
import 'package:myhealthaura/widgets/app_button_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("              MY HEALTH AURA    ")),
      backgroundColor: const Color.fromARGB(255, 227, 173, 237),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello,',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'User name',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(Icons.person),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                  ),
                  children: [
                    _buildGridItem(
                      "icons/doctor.png",
                      "Find Doctor",
                      () {
                        Navigator.of(context).pushNamed("/doctorslist");
                      },
                    ),
                    _buildGridItem(
                      "icons/hospital.png",
                      "Find near by Hospital",
                      () {
                        Navigator.of(context).pushNamed("/findhospital");
                      },
                    ),
                    _buildGridItem(
                      "icons/medicine.png",
                      "Medicine",
                      () {
                        Navigator.of(context).pushNamed("/inprogess");
                      },
                    ),
                    _buildGridItem(
                      "icons/onlineappointment.png",
                      "Online Appointment",
                      () {
                        Navigator.of(context).pushNamed("/inprogess");
                      },
                    ),
                    _buildGridItem(
                      "icons/symptom.png",
                      "Search Disease",
                      () {
                        Navigator.of(context).pushNamed("/diseaselist");
                      },
                    ),
                    _buildGridItem(
                      "icons/report.png",
                      "My Report",
                      () {
                        Navigator.of(context).pushNamed("/inprogess");
                      },
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    AppButtonWidget(
                      onPressed: () {
                        Navigator.of(context).pushNamed("/feedback");
                      },
                      title: "FeedBack",
                      titleColor: Colors.black,
                      buttonBackgroundColor: Colors.white,
                      buttonBorderColor: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  