import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/custom_buton.dart';
import 'package:note_app/widget/custom_text_filed.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CUstomButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                var noteModel = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now().toString(),
                  color: Colors.blue.value,
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
