import 'package:document_manager/Language/language_screen.dart';
import 'package:flutter/material.dart';

class LanguageCell extends StatefulWidget {
  final LanguageStatus language;
  final bool isChecked;
  final VoidCallback onButtonPressed;

  const LanguageCell({
    Key? key,
    required this.language,
    required this.isChecked,
    required this.onButtonPressed,
  }) : super(key: key);

  @override
  State<LanguageCell> createState() => _LanguageCellState();
}

class _LanguageCellState extends State<LanguageCell> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onButtonPressed,
      behavior: HitTestBehavior.translucent,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(19, 10, 19, 10),
        child: Row(
          children: [
            SizedBox(width: 30, child: widget.language.image),
            const SizedBox(width: 10),
            Text(widget.language.name),
            const Spacer(flex: 1),
            SizedBox(
                width: 20,
                child: widget.isChecked
                    ? Image.asset("assets/icon_Selected.png")
                    : Image.asset("assets/icon_Unselect.png")),
          ],
        ),
      ),
    );
  }
}
