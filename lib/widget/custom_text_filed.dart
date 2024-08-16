import 'package:flutter/material.dart';
import 'package:note_app/conestants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KPrimaryCOlor,
      decoration: InputDecoration(
        hintText: 'tittle',
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryCOlor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
