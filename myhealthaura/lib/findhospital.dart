import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HospitalList extends StatelessWidget {
  HospitalList({Key? key, required String title}) : super(key: key); // Corrected the constructor syntax

  List<Map<String, String>> items = [
    {'title': 'Arundhathi Hospital', 'subtitle': 'Rating: 4.5/5       Distance: 2km'},
    {'title': 'Neelankanta Group of Hospitals', 'subtitle': 'Rating: 4.0/5       Distance: 3km'},
    {'title': 'Rainbow Group of Hospitals', 'subtitle': 'Rating: 3.9/5      Distance: 4km'},
    {'title': 'Global Hospital', 'subtitle': 'Rating: 4.0/5       Distance: 4.5km'},
    {'title': 'Nirohi Healthcare', 'subtitle': 'Rating: 2.5/5       Distance: 500m'},
    {'title': 'Aayush Hospital', 'subtitle': 'Rating: 3.5/5       Distance: 10km'},
    {'title': 'KIMS', 'subtitle': 'Rating: 4.0/5      Distance: 15km'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Find a hospital near by")),
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
                      builder: (context) => HospitalList(title: items[index]['title']!),
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
