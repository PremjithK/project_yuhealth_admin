import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:yu_health_admin/config/theme.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';

class DoctorRemovalTile extends StatefulWidget {
  DoctorRemovalTile({
    required this.name,
    required this.qualification,
    required this.department,
    required this.clinic,
    required this.imageURL,
    this.height,
    this.width = double.infinity,
    this.color = Colors.cyan,
    this.textColor = Colors.white,
    // Methods
    this.onRemoved,
    super.key,
  });

  //Config
  final String name;
  final String qualification;
  final String department;
  final String clinic;
  final String imageURL;
  final double? width;
  final double? height;
  final Color textColor;
  final Color color;
  final void Function(BuildContext)? onRemoved;

  //Styles
  final double contentRadius = 15;

  //
  @override
  State<DoctorRemovalTile> createState() => _DoctorRemovalTileState();
}

class _DoctorRemovalTileState extends State<DoctorRemovalTile> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        extentRatio: 0.75,
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            icon: Icons.pause,
            label: 'FREEZE',
            backgroundColor: Colors.blue,
            onPressed: widget.onRemoved,
          ),
          SlidableAction(
            icon: Icons.close,
            label: 'REMOVE',
            backgroundColor: Colors.red,
            onPressed: widget.onRemoved,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
        ),
        width: double.infinity,
        child: Row(
          children: [
            Image.network(
              widget.imageURL,
              width: 140,
              height: 100,
              fit: BoxFit.cover,
            ),
            widthspace(10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontFamily: fontFamily,
                    fontVariations: [FontVariation('wght', 800)],
                  ),
                ),
                heightspace(5),
                Text(
                  widget.department,
                  style: const TextStyle(fontSize: 12, fontFamily: 'Inter'),
                ),
                Text(
                  widget.qualification,
                  style: const TextStyle(fontSize: 12, fontFamily: 'Inter'),
                ),
                Text(
                  widget.clinic,
                  style: const TextStyle(fontSize: 12, fontFamily: 'Inter'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
