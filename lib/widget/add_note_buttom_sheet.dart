import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextFiled(
              hint: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextFiled(
              hint: 'content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
