import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/bold_elevated_buttons.dart';
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
          padding: const EdgeInsets.symmetric(
            vertical: 60,
          ),
          child: Column(
            children: [
              MainHeading(
                text: 'Approve Doctors',
                fontSize: 30,
              ),
              heightspace(20),
              Text('Swipe Left or Right For Options'),
              heightspace(10),
              DoctorApprovalTile(
                name: 'Dr. Chen',
                qualification: 'MBBS, MD',
                department: 'ORTHOPAEDIC',
                onAccepted: (context) {
                  print("ACCEPTED!");
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: SizedBox(
          width: double.infinity,
          child: BoldElevatedButtonWithIcon(
            onPressed: () => {Navigator.pop(context)},
            label: 'Back',
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
