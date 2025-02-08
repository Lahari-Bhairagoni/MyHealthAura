import 'package:flutter/material.dart';
import 'package:myhealthaura/widgets/app_button_widget.dart';

// ignore: must_be_immutable
class PatientList extends StatelessWidget {
  PatientList({Key? key, required String title}) : super(key: key);

  List<Map<String, String>> items = [
    {'title': 'Hithika', 'subtitle': 'Age : 28       Problem: Acne'},
    {'title': 'Vishal', 'subtitle': 'Age : 19      Problem: Alopecia Areata'},
    {
      'title': 'Pruthvi',
      'subtitle': 'Age: 29       Problem: Atopic Dermatitis'
    },
    {'title': 'Nivedhita', 'subtitle': 'Age: 35       Problem: HS'},
    {'title': 'Mathew', 'subtitle': 'Age: 48       Problem: Epidermolysis'},
    {'title': 'Jolly', 'subtitle': 'Age: 56      Problem: Psoriasis'},
    {'title': 'Patient 6', 'subtitle': 'Age: xx       Problem: xxxxx'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Patient")),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
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
                            builder: (context) => PatientList(title: items[index]['title']!),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            AppButtonWidget(
              onPressed: () {
                Navigator.of(context).pushNamed("/secondScreen");
              },
              title: "Go Back",
              titleColor: Colors.white,
              buttonBackgroundColor: const Color.fromARGB(255, 131, 5, 235),
              buttonBorderColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}