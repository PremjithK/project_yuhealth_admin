import 'package:flutter/material.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
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
                  heightspace(10),
                ],
              ),
              //
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        // padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: SizedBox(
          width: double.infinity,
          child: BoldElevatedButtonWithIcon(
            onPressed: () => {},
            label: 'Logout',
            icon: Icon(
              Icons.logout,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
