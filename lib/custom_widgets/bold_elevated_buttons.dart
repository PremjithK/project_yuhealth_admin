import 'dart:ui';
import 'package:flutter/material.dart';

class BoldElevatedButtonWithIcon extends StatelessWidget {
  const BoldElevatedButtonWithIcon({
    required this.label,
    required this.icon,
    required this.onPressed,
    super.key,
  });

  final String label;
  final Icon icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
            elevation: 0,
            shadowColor: Colors.transparent,
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
        onPressed: onPressed,
        label: Text(
          this.label,
          style: TextStyle(
              fontSize: 18, fontVariations: [FontVariation('wght', 900)]),
        ),
        icon: this.icon);
  }
}

class BoldElevatedButton extends StatelessWidget {
  const BoldElevatedButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: onPressed,
      child: Text(
        this.label,
        style: TextStyle(
            fontSize: 18, fontVariations: [FontVariation('wght', 900)]),
      ),
    );
  }
}
