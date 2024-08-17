import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/conestants.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/colors_list_view.dart';
import 'package:note_app/widget/custom_app_bar.dart';
import 'package:note_app/widget/custom_text_filed.dart';
import 'package:note_app/widget/edite_note_color_list_view.dart';

class EditeNoteViewBody extends StatefulWidget {
  const EditeNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNoteViewBody> createState() => _EditeNoteViewBodyState();
}

class _EditeNoteViewBodyState extends State<EditeNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            title: 'Edite Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextFiled(
              onChanged: (value) {
                title = value;
              },
              hint: widget.note.title),
          const SizedBox(
            height: 16,
          ),
          CustomTextFiled(
            onChanged: (value) {
              content = value;
            },
            hint: widget.note.subTitle,
            maxLines: 5,
          ),
          const SizedBox(
            height: 16,
          ),
          EditeNotesColorList(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}
