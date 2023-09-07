import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:yu_health_admin/custom_widgets/doctor_approval_tile.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';
import 'package:yu_health_admin/custom_widgets/text_types.dart';

class ManageDoctorsPage extends StatelessWidget {
  ManageDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    // UI
    return Scaffold(
      backgroundColor: theme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60),
          child: Column(
            children: [
              Center(
                child: MainHeading(
                  text: 'Approve Doctors',
                  fontSize: 30,
                ),
              ),
              heightspace(20),
              DoctorApprovalTile(
                name: 'Dr. Chen',
                qualification: 'MBBS, MD',
                department: 'ORTHOPAEDIC',
              ),
              DoctorApprovalTile(
                name: 'Dr. Chen',
                qualification: 'MBBS, MD',
                department: 'ORTHOPAEDIC',
              ),
            ],
          ),
        ),
      )

      // SingleChildScrollView(
      //   child: SizedBox(
      //     width: deviceWidth,
      //     // height: deviceHeight,
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      //       child: Column(
      //         children: [
      //           const MainHeading(
      //             text: 'Approval Requests',
      //             fontSize: 30,
      //           ),
      //           heightspace(20),
      //           DoctorApprovalCard(
      //             name: 'Doctor Name',
      //             qualification: 'MBBS',
      //             icon: Icon(Icons.person),
      //           ),
      //           heightspace(20),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),

      //Bottom Navbar
      ,
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: IconButton(
              iconSize: 30,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
          ),
        ],
      ),
    );
  }
}
