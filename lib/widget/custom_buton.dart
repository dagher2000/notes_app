import 'package:flutter/material.dart';
import 'package:note_app/conestants.dart';

class CUstomButton extends StatelessWidget {
  const CUstomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: KPrimaryCOlor,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: const Center(
        child: Text(
          'Add',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
