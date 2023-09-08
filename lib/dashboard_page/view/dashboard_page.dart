import 'package:flutter/material.dart';
import 'package:yu_health_admin/approve_doctors_page/view/approve_doctors.dart';
import 'package:yu_health_admin/custom_widgets/bold_elevated_buttons.dart';
import 'package:yu_health_admin/custom_widgets/colored_option_container.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';
import 'package:yu_health_admin/custom_widgets/text_types.dart';
import 'package:yu_health_admin/remove_doctors_page/view/remove_doctors.dart';
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
              Center(
                child: Column(
                  children: [
                    const MainHeading(text: 'Manage Yu'),
                    heightspace(20),
                    ColoredOptionContainer(
                      color: Colors.teal,
                      title: 'Approve Doctors',
                      subTitle:
                          'Accept or Reject doctors enlisting to YuHealth',
                      icon: Icon(Icons.medical_services),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ApproveDoctorsPage(),
                            ));
                      },
                    ),
                    heightspace(10),
                    ColoredOptionContainer(
                      color: Colors.pink,
                      title: 'Remove Doctors',
                      subTitle: 'Remove Doctors Actively Working With YuHealth',
                      icon: Icon(Icons.close),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RemoveDoctorsPage(),
                            ));
                      },
                    ),
                    heightspace(10),
                    ColoredOptionContainer(
                      color: Colors.blue.shade500,
                      title: 'View Feedback',
                      subTitle: 'Read Feedback From Yu Customers',
                      icon: Icon(Icons.message_outlined),
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
