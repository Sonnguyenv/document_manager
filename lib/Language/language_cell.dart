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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            // side: const BorderSide(color: Colors.white),
          ),
          backgroundColor: Colors.white,
        ),
        onPressed: widget.onButtonPressed,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 8, 0, 8),
          child: Row(
            children: [
              SizedBox(width: 30, child: widget.language.image),
              const SizedBox(width: 16),
              Text(
                widget.language.name,
                style: const TextStyle(color: Colors.black),
              ),
              const Spacer(flex: 1),
              SizedBox(
                  width: 20,
                  child: widget.isChecked
                      ? Image.asset("assets/icon_Selected.png")
                      : Image.asset("assets/icon_Unselect.png")),
            ],
          ),
        ),
      ),
    );
  }
}
