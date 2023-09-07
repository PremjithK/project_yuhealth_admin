import 'dart:ui';
import 'package:flutter/material.dart';

class ColoredOptionContainer extends StatefulWidget {
  ColoredOptionContainer({
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.onTap,
    this.height,
    this.width = double.infinity,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    super.key,
  });

  //Config
  final String title;
  final String subTitle;
  final double? width;
  final double? height;
  final Color textColor;
  final Color color;
  final Icon icon;
  final void Function() onTap;

  @override
  State<ColoredOptionContainer> createState() => _ColoredOptionContainerState();
}

class _ColoredOptionContainerState extends State<ColoredOptionContainer> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      titleAlignment: ListTileTitleAlignment.center,
      contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
      onTap: widget.onTap,
      tileColor: widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      leading: CircleAvatar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0.1),
        radius: 30,
        foregroundColor: Colors.white,
        child: widget.icon,
      ),
      title: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        widget.subTitle,
        style: TextStyle(
          fontVariations: const [
            FontVariation('wght', 500),
          ],
          fontSize: 14,
          color: Colors.white.withOpacity(0.7),
        ),
        maxLines: 2,
      ),
    );
  }
}
