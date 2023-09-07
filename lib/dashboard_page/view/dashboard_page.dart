import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:yu_health_admin/approve_doctors_page/view/approve_doctors.dart';
import 'package:yu_health_admin/custom_widgets/bold_elevated_buttons.dart';
import 'package:yu_health_admin/custom_widgets/colored_option_container.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';
import 'package:yu_health_admin/custom_widgets/text_types.dart';
import 'package:yu_health_admin/view_feedback_page/view_feedback.dart';

class DashboardPage extends StatelessWidget {
  DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //final deviceHeight = MediaQuery.of(context).size.height;
    //final deviceWidth = MediaQuery.of(context).size.width;

    // UI
    return Scaffold(
      backgroundColor: theme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          children: [
            const MainHeading(text: 'Manage Yu'),

            heightspace(20),
            ColoredOptionContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ManageDoctorsPage(),
                    ));
              },
              title: 'Approve Doctors',
              subTitle: 'Accept Or Reject Doctors',
              color: Colors.teal.shade600,
              icon: Icon(
                Icons.medical_information,
                size: 25,
              ),
            ),

            // REVOKE DOCTORS
            heightspace(10),
            ColoredOptionContainer(
              color: Colors.red,
              title: 'Remove Doctors',
              subTitle: 'Revoke permits of currently active doctors.',
              icon: Icon(
                Icons.cancel,
                size: 30,
              ),
              onTap: () {},
            ),
            // FEEDBACK OPTION
            heightspace(10),
            ColoredOptionContainer(
              title: 'View Feedback',
              subTitle: 'Feedback and Complaints From Users',
              icon: Icon(
                Icons.message_outlined,
                size: 25,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewFeedbackPage(),
                    ));
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            BoldElevatedButtonWithIcon(
              onPressed: () => {},
              label: 'Logout',
              icon: Icon(
                Icons.logout,
              ),
            )
          ],
        ),
      ),
    );
  }
}
