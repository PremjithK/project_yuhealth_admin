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
  final void Function()? onAccepted;
  final void Function()? onRejected;
  final void Function()? onDetails;

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
              backgroundColor: Colors.green,
              onPressed: (context) => widget.onAccepted,
            ),
            SlidableAction(
                icon: Icons.close,
                label: 'Reject',
                backgroundColor: Colors.red,
                onPressed: (context) => widget.onRejected),
          ],
        ),
        endActionPane: ActionPane(motion: DrawerMotion(), children: [
          SlidableAction(
            icon: Icons.info_outline,
            backgroundColor: Colors.blue,
            label: 'More Info',
            onPressed: (context) => widget.onDetails,
          ),
        ]),
        child: ListTile(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(widget.contentRadius),
            child: Image.network(
              'https://img.freepik.com/premium-photo/covid-19-coronavirus-outbreak-healthcare-workers-pandemic-concept-middle-aged-doctor-white-coat-cross-arms-chest-ready-help-patients-prescribe-medication-smiling-cheerful_1258-61179.jpg',
              fit: BoxFit.contain,
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
