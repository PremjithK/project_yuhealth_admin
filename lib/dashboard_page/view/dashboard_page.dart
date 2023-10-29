import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yu_health_admin/approve_doctors_page/view/approve_doctors.dart';
import 'package:yu_health_admin/custom_widgets/colored_option_container.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';
import 'package:yu_health_admin/remove_doctors_page/view/remove_doctors.dart';
import 'package:yu_health_admin/view_feedback_page/view_feedback.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    // UI
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        scrolledUnderElevation: 0,
        leadingWidth: 10,
        title: const Text('Yu Admin Console'),
        actions: [
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.logout),
            label: const Text('Log Out'),
          ),
        ],
      ),
      backgroundColor: theme.background,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          heightspace(20),
          ColoredOptionContainer(
            color: Colors.teal,
            title: 'Approve Doctors',
            subTitle: 'Accept or Reject doctors enlisting to YuHealth',
            icon: const Icon(Icons.medical_services),
            onTap: () {
              Get.to<Widget>(const ApproveDoctorsPage());
            },
          ),
          heightspace(10),
          ColoredOptionContainer(
            color: Colors.pink,
            title: 'Remove Doctors',
            subTitle: 'Remove Doctors Actively Working With YuHealth',
            icon: const Icon(Icons.close),
            onTap: () => Get.to<Widget>(
              const RemoveDoctorsPage(),
            ),
          ),
          heightspace(10),
          ColoredOptionContainer(
            color: Colors.blue.shade500,
            title: 'View Feedback',
            subTitle: 'Read Feedback From Yu Customers',
            icon: const Icon(Icons.message_outlined),
            onTap: () {
              Get.to<Widget>(const ViewFeedbackPage());
            },
          ),
          heightspace(10),
        ],
      ),
    );
  }
}
