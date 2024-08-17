import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:note_app/widget/custom_buton.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
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
            SizedBox(
              height: 32,
            ),
            CUstomButton(),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
