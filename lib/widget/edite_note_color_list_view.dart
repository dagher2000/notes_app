import 'package:flutter/material.dart';
import 'package:note_app/conestants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/colors_list_view.dart';

class EditeNotesColorList extends StatefulWidget {
  const EditeNotesColorList({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditeNotesColorList> createState() => _EditeNotesColorListState();
}

class _EditeNotesColorListState extends State<EditeNotesColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  isActive: currentIndex == index,
                ),
              ),
            );
          }),
    );
  }
}
