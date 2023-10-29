import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yu_health_admin/config/theme.dart';

class ColoredOptionContainer extends StatefulWidget {
  const ColoredOptionContainer({
    required this.title,
    required this.subTitle,
    required this.icon,
    required this.onTap,
    this.height,
    this.width = double.infinity,
    super.key,
  });

  //Config
  final String title;
  final String subTitle;
  final double? width;
  final double? height;
  final Icon icon;
  final void Function() onTap;

  @override
  State<ColoredOptionContainer> createState() => _ColoredOptionContainerState();
}

class _ColoredOptionContainerState extends State<ColoredOptionContainer> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //
    return ListTile(
      titleAlignment: ListTileTitleAlignment.center,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      onTap: widget.onTap,
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        side: BorderSide(color: theme.primary),
        borderRadius: BorderRadius.circular(15),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 30,
        foregroundColor: theme.primary,
        child: widget.icon,
      ),
      title: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 15,
          fontFamily: fontFamily,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        widget.subTitle,
        style: TextStyle(
          fontFamily: 'Inter',
          fontVariations: const [
            FontVariation('wght', 500),
          ],
          fontSize: 12,
          color: Colors.black.withOpacity(0.5),
        ),
      ),
    );
  }
}
