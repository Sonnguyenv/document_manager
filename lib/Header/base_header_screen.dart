import 'package:flutter/material.dart';

class BaseHeaderScreen extends StatelessWidget {
  final String title;
  final VoidCallback onRightButtonPressed;

  const BaseHeaderScreen({
    Key? key,
    required this.title,
    required this.onRightButtonPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            width: 17.5,
            top: 0,
            bottom: 0,
            right: 19.0,
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: onRightButtonPressed,
              child: Image.asset("assets/icon_Confirm.png"),
            ),
          ),
        ],
      ),
    );
  }
}
