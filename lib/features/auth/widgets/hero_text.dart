import 'package:flutter/material.dart';

class HeroText extends StatelessWidget {
  final String text;
  const HeroText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          text,
          style: const TextStyle(
            fontFamily: "Anuphan-SemiBold",
            letterSpacing: 1.5,
            fontSize: 24
            // height: 1
          ),
        ),
      ),
    );
  }
}
