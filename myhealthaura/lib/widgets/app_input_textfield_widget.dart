import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppInputTextfieldWidget extends StatelessWidget {
  AppInputTextfieldWidget(
      {Key? key,
      required this.controller,
      required this.title,
      required this.hitText})
      : super(key: key);
  TextEditingController? controller;
  final String title;
  final String hitText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 4,),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hitText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(8))),
        ),
      ],
    );
  }
}