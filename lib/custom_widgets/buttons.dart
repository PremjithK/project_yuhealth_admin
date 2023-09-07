import 'dart:ui';
import 'package:flutter/material.dart';

// Common features
String font = 'PlusJakarta';
double fontSize = 15;
double buttonPadding = 15;
double elev = 0;
double borderWidth = 1;
//
double mainBorderRadius = 15;

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    //Required
    required this.label,
    required this.onPressed,
    super.key,
    //Optional
    this.width = double.infinity,
  });

  final String label;
  final void Function()? onPressed;
  final double width;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      key: key,
      onPressed: onPressed,
      style: ButtonStyle(
        padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 20)),
        overlayColor:
            MaterialStatePropertyAll(Theme.of(context).colorScheme.tertiary),
        foregroundColor:
            MaterialStatePropertyAll(Theme.of(context).colorScheme.outline),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            fontFamily: font,
            fontVariations: [FontVariation('wght', 600)],
            fontSize: fontSize,
          ),
        ),
      ),
      child: Text(label),
    );
  }
}

class MyPrimaryButton extends StatelessWidget {
  const MyPrimaryButton({
    //Required
    required this.label,
    required this.onPressed,
    // Optional
    this.width = double.infinity,
    super.key,
  });

  final String label;
  final void Function()? onPressed;
  final double? width;
  // Customized Build Method
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontFamily: font,
              fontVariations: [FontVariation('wght', 900)],
              fontSize: fontSize,
            ),
            backgroundColor: Theme.of(context).colorScheme.primary,
            padding: EdgeInsets.all(buttonPadding),
            elevation: elev,
            shape: RoundedRectangleBorder(
                // side: BorderSide(
                //   width: borderWidth,
                //   color: Theme.of(context).colorScheme.outline,
                // ),
                borderRadius: BorderRadius.circular(mainBorderRadius))),
        child: Text(label),
      ),
    );
  }
}

class MySecondaryButton extends StatelessWidget {
  const MySecondaryButton({
    //Required
    required this.label,
    required this.onPressed,
    // Optional
    this.width = double.infinity,
    super.key,
  });

  final String label;
  final void Function()? onPressed;
  final double? width;
  // Customized Build Method
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          foregroundColor: Theme.of(context).colorScheme.outline,
          textStyle: TextStyle(
            fontFamily: font,
            fontVariations: [FontVariation('wght', 900)],
            fontSize: fontSize,
          ),
          backgroundColor: Theme.of(context).colorScheme.onBackground,
          padding: EdgeInsets.all(buttonPadding),
          elevation: elev,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                width: borderWidth,
                color: Theme.of(context).colorScheme.outline,
              ),
              borderRadius: BorderRadius.circular(mainBorderRadius)),
        ),
        child: Text(label),
      ),
    );
  }
}
