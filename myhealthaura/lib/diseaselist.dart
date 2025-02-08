import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DiseaseList extends StatelessWidget {
  DiseaseList({Key? key, required String title})
      : super(key: key); // Corrected the constructor syntax

  List<Map<String, String>> items = [
    {
      'title': 'COVID-19',
      'subtitle':
          'Symptoms: Fever, Cough, Shrotness of breath or difficulty breathing, Fatigue, Muscle or bodyaches, Headache, Loss of taste or smell, Sore throat, runny nose, Nausea, Diarrhea'
    },
    {
      'title': 'Coronary Artery',
      'subtitle':
          'Symptoms: Chest pain, Weakness, nausea, Pain or diconfort in arms or shoulder'
    },
    {
      'title': 'BrainTumor',
      'subtitle':
          'Symptoms: Headaches, Difficulty in thinking,speaking or finding words, behavior changes, Loss of hearing, Vision changes'
    },
    {
      'title': 'Malaria',
      'subtitle':
          'Symptoms: Fever, General feeling of discomfort, Headache, Nausea and vomiting, Diarrhea, Muscle pain'
    },
    {
      'title': 'Thyroid Cancer',
      'subtitle':
          'Symptoms:pain in the neck or throat, breathing problems, hoarseness or trouble swallowing, lump in the front of the neck below the Adams apple, swollen lymph nodes, especially in the neck'
    },
    {
      'title': 'Asthma',
      'subtitle':
          'Symptoms: Coughing(during exercise or laughing), Difficulty breathing, Chest tightness, wheezing'
    },
    {
      'title': 'Leukemia',
      'subtitle': 'Symptoms: fever or night sweats, frequent infections, feeling tired or weak, headche, bleeding gums, pain the bones or joints, swelling in the abdomen, unintentional weightloss'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Search Disease")),
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
                      builder: (context) =>
                          DiseaseList(title: items[index]['title']!),
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
