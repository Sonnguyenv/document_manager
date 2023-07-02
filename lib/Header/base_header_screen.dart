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
    final bool hasNotch = MediaQuery.of(context).padding.top > 24.0;

    return Container(
      height: hasNotch ? 84 : 60,
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 16.0,
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
            bottom: 16.0,
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
