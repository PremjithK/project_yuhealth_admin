import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';

class DoctorApprovalTile extends StatefulWidget {
  DoctorApprovalTile({
    required this.name,
    required this.qualification,
    required this.department,
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
  final double? width;
  final double? height;
  final Color textColor;
  final Color color;

  // final String photoURL;
  final void Function(BuildContext)? onAccepted;
  final void Function(BuildContext)? onRejected;
  final void Function(BuildContext)? onDetails;

  //Styles
  double contentRadius = 15;

  //
  @override
  State<DoctorApprovalTile> createState() => _DoctorApprovalTileState();
}

class _DoctorApprovalTileState extends State<DoctorApprovalTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
      ),
      child: Slidable(
        startActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              icon: Icons.check,
              label: 'Accept',
              backgroundColor: Colors.teal,
              onPressed: widget.onAccepted,
            ),
            SlidableAction(
                icon: Icons.close,
                label: 'Reject',
                backgroundColor: Colors.red,
                onPressed: widget.onRejected),
          ],
        ),
        endActionPane: ActionPane(motion: DrawerMotion(), children: [
          SlidableAction(
            icon: Icons.info_outline,
            backgroundColor: Colors.blue,
            label: 'More Info',
            onPressed: widget.onDetails,
          ),
        ]),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(widget.contentRadius / 2),
            child: Image.network(
              'https://img.freepik.com/premium-photo/covid-19-coronavirus-outbreak-healthcare-workers-pandemic-concept-middle-aged-doctor-white-coat-cross-arms-chest-ready-help-patients-prescribe-medication-smiling-cheerful_1258-61179.jpg',
              fit: BoxFit.cover,
              width: 100,
            ),
          ),
          // CircleAvatar(
          //   radius: 40,
          //   backgroundImage: NetworkImage(

          //     'https://img.freepik.com/premium-photo/covid-19-coronavirus-outbreak-healthcare-workers-pandemic-concept-middle-aged-doctor-white-coat-cross-arms-chest-ready-help-patients-prescribe-medication-smiling-cheerful_1258-61179.jpg',
          //   ),
          // ),
          title: Text(
            widget.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(widget.qualification),
            Text(widget.department),
          ]),
        ),
      ),
    );
  }
}
