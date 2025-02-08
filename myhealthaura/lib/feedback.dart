import 'package:flutter/material.dart';
//import 'package:myhealthaura/widgets/app_input_textfield_widget.dart';
import 'package:myhealthaura/widgets/app_button_widget.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  final TextEditingController _feedbackController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Feedback")), // Use const for the title
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              // Adjusted the title and hitText for consistency
              TextField(
                controller: _feedbackController,
                 maxLines: 10, // Set the maximum number of lines to show
                 decoration: InputDecoration(
                 labelText: 'Feedback', // Label text for the input field
                 hintText: 'Share your experience and few suggestions to improve', // Placeholder text
                 border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10),
                ),
                 contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
                style: const TextStyle(
                fontSize: 16, // Adjust the font size of the entered text
                 ),
              ),

              const SizedBox(
                height: 200, // Increased the height for better spacing
              ),
              AppButtonWidget(
                onPressed: () {
                  Navigator.of(context).pushNamed("/homePage");
                },
                title: "Submit",
                titleColor: Colors.white,
                buttonBackgroundColor: const Color.fromARGB(255, 61, 18, 84),
                buttonBorderColor: Colors.transparent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
