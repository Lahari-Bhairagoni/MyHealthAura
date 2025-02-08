import 'package:flutter/material.dart';

class InProgress extends StatefulWidget {
  const InProgress({super.key});

  @override
  State<InProgress> createState() => _InProgressState();
}

class _InProgressState extends State<InProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("In Progress")),
      backgroundColor: const Color.fromARGB(255, 243, 240, 243),
      body: const SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.0, right: 25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Text(
                    'In Progress',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Sorry for the inconvenience but the page you are trying to view is currently in progress',
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}