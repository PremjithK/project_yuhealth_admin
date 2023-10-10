import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';

class DoctorApprovalTile extends StatefulWidget {
  DoctorApprovalTile({
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
    this.onAccepted,
    this.onRejected,
    this.onDetails,
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

  // final String photoURL;
  final void Function(BuildContext)? onAccepted;
  final void Function(BuildContext)? onRejected;
  final void Function(BuildContext)? onDetails;

  //Styles
  double contentRadius = 10;

  //
  @override
  State<DoctorApprovalTile> createState() => _DoctorApprovalTileState();
}

class _DoctorApprovalTileState extends State<DoctorApprovalTile> {
  @override
  Widget build(BuildContext context) {
    return Slidable(
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            icon: Icons.check,
            backgroundColor: Colors.teal,
            onPressed: widget.onAccepted,
          ),
          SlidableAction(
              icon: Icons.close, backgroundColor: Colors.red, onPressed: widget.onRejected),
        ],
      ),
      startActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            icon: Icons.text_snippet_rounded,
            backgroundColor: Colors.blue,
            label: 'CREDENTIALS',
            onPressed: widget.onDetails,
          ),
        ],
      ),
      child: Container(
        width: double.infinity,
        color: Theme.of(context).colorScheme.onBackground,
        child: Row(
          children: [
            Image.network(
              widget.imageURL,
              width: 140,
              height: 100,
              fit: BoxFit.cover,
            ),
            widthspace(20),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
            )
          ],
        ),
      ),
    );
  }
}
