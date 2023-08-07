import 'package:flutter/material.dart';

class BaseHeaderScreen extends StatelessWidget {
  final String title;
  final bool isHiddenButtonRight;
  final VoidCallback? onRightButtonPressed;

  const BaseHeaderScreen({
    Key? key,
    required this.title,
    required this.isHiddenButtonRight,
    this.onRightButtonPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Align(
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            if (!isHiddenButtonRight)
              Positioned(
              width: 17.5,
              right: 19.0,
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: onRightButtonPressed,
                child: Image.asset("assets/icon_Confirm.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
