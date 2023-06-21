import 'package:document_manager/Header/base_header_screen.dart';
import 'package:flutter/material.dart';
import 'language_cell.dart';

enum LanguageStatus { english, spain, hindi, indo, french, portugal }

extension StatusExtension on LanguageStatus {
  String get name {
    switch (this) {
      case LanguageStatus.english:
        return 'English';
      case LanguageStatus.spain:
        return 'Spain';
      case LanguageStatus.hindi:
        return 'Hindi';
      case LanguageStatus.indo:
        return 'Indo';
      case LanguageStatus.french:
        return 'French';
      case LanguageStatus.portugal:
        return 'Portugal';
    }
  }

  Image get image {
    switch (this) {
      case LanguageStatus.english:
        return Image.asset("assets/flag_English.png");
      case LanguageStatus.spain:
        return Image.asset("assets/flag_Spain.png");
      case LanguageStatus.hindi:
        return Image.asset("assets/flag_Hindi.png");
      case LanguageStatus.indo:
        return Image.asset("assets/flag_Indo.png");
      case LanguageStatus.french:
        return Image.asset("assets/flag_French.png");
      case LanguageStatus.portugal:
        return Image.asset("assets/flag_Portugal.png");
    }
  }
}

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguageScreen> {
  final List<LanguageStatus> languages = LanguageStatus.values;
  LanguageStatus languageSelected = LanguageStatus.english;

  void handleRightButtonPressed() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: BaseHeaderScreen(
              title: "Language",
              onRightButtonPressed: handleRightButtonPressed,
            ),
          ),
          Expanded(
            flex: 1,
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                return LanguageCell(
                  language: languages[index],
                  isChecked: languages[index].name == languageSelected.name,
                  onButtonPressed: () {
                    setState(() {
                      languageSelected = languages[index];
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
