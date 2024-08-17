import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_app_bar.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Edite Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFiled(hint: 'title'),
          SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            hint: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
