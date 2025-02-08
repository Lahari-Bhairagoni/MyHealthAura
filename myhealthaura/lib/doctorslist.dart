import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DoctorsList extends StatelessWidget {
  DoctorsList({Key? key, required String title}) : super(key: key); // Corrected the constructor syntax

  List<Map<String, String>> items = [
    {'title': 'Dr.Yashna', 'subtitle': 'Age : 28       Designation: Cardiologist'},
    {'title': 'Dr.Viraj', 'subtitle': 'Age : 30       Designation: Pediatrician'},
    {'title': 'Dr.Amit Bhattacharya', 'subtitle': 'Age: 29       Designation: General Surgeon'},
    {'title': 'Dr.Mahendra', 'subtitle': 'Age: 42       Designation: Neurologist'},
    {'title': 'Dr.Virat', 'subtitle': 'Age: 38       Designation: Psychiatrist'},
    {'title': 'Dr.Veronika', 'subtitle': 'Age: 34       Designation: Gynecologist'},
    {'title': 'Dr.Samyuktha', 'subtitle': 'Age: 32       Designation:Orthopaedic Surgeon'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Doctor")),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(items[index]['title']!),
                subtitle: Text(items[index]['subtitle']!),
                onTap: () {
                  // Handle item tap, for example, navigate to a new screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DoctorsList(title: items[index]['title']!),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
