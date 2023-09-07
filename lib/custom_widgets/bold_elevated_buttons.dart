import 'dart:ui';
import 'package:flutter/material.dart';

class BoldElevatedButtonWithIcon extends StatelessWidget {
  const BoldElevatedButtonWithIcon({
    required this.label,
    required this.icon,
    required this.onPressed,
    this.textSize = 18,
    this.borderRadius = 15,
    super.key,
  });
  final double textSize;
  final String label;
  final Icon icon;
  final double borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    //
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          alignment: Alignment.center,
          elevation: 0,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
      onPressed: onPressed,
      label: Text(
        label,
        style: TextStyle(
          color: Colors.white,
          fontSize: textSize,
          fontVariations: [FontVariation('wght', 900)],
        ),
      ),
      icon: icon,
    );
  }
}

class BoldElevatedButton extends StatelessWidget {
  const BoldElevatedButton({
    required this.label,
    required this.onPressed,
    this.textSize = 20,
    this.borderRadius = 15,
    super.key,
  });

  final String label;
  final double textSize;
  final double borderRadius;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius))),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(
            color: Colors.white,
            fontSize: textSize,
            fontVariations: [FontVariation('wght', 900)]),
      ),
    );
  }
}
