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
      contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      onTap: widget.onTap,
      tileColor: widget.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      leading: CircleAvatar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 0.1),
        radius: 30,
        foregroundColor: Colors.white,
        child: widget.icon,
      ),
      title: Text(
        widget.title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      subtitle: Text(
        widget.subTitle,
        style: TextStyle(
          fontVariations: [
            FontVariation('wght', 400),
          ],
          fontSize: 13,
          color: Colors.white.withOpacity(0.8),
        ),
      ),
    );
    // Container(
    //   width: widget.width,
    //   padding: EdgeInsets.all(20),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(20),
    //     color: widget.color,
    //   ),
    //   child: Row(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       CircleAvatar(
    //         backgroundColor: Color.fromRGBO(255, 255, 255, 0.25),
    //         radius: 25,
    //         child: widget.icon,
    //       ),
    //       widthspace(20),
    //       Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             widget.title,
    //             style: TextStyle(
    //                 fontWeight: FontWeight.bold, color: widget.textColor),
    //           ),
    //           Text(
    //             widget.subTitle,
    //             style: TextStyle(
    //                 fontSize: 25,
    //                 color: widget.textColor,
    //                 fontVariations: [FontVariation('wght', 300)]),
    //           ),
    //         ],
    //       )
    //     ],
    //   ),
    // );
  }
}
