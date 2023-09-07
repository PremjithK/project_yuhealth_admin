import 'dart:ui';
import 'package:flutter/material.dart';

class MainHeading extends StatelessWidget {
  const MainHeading({
    //Custom
    required this.text,
    this.fontSize = 45,
    super.key,
  });

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      key: key,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'PlusJakarta',
        fontVariations: const [FontVariation('wght', 900)],
        letterSpacing: -0.5,
        color: Theme.of(context).textTheme.displayLarge!.color,
      ),
    );
  }
}
