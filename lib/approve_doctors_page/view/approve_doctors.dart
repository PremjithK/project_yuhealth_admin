import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/doctor_approval_tile.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';

class ApproveDoctorsPage extends StatelessWidget {
  const ApproveDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    // UI
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text('Approve Doctors'),
        bottom: PreferredSize(
          preferredSize: const Size(double.infinity, 2),
          child: Container(
            height: 2,
            color: const Color.fromARGB(255, 226, 50, 73),
          ),
        ),
      ),
      backgroundColor: theme.background,
      body: ListView(
        padding: const EdgeInsets.all(25),
        children: [
          const Text('Swipe Left or Right For Options'),
          heightspace(10),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Column(
              children: [
                DoctorApprovalTile(
                  name: 'Dr. RAJESH MK',
                  qualification: 'MBBS, MD',
                  department: 'ORTHOPAEDIC',
                  clinic: 'ASTER MIMS',
                  imageURL:
                      'https://img.freepik.com/premium-photo/covid-19-coronavirus-outbreak-healthcare-workers-pandemic-concept-middle-aged-doctor-white-coat-cross-arms-chest-ready-help-patients-prescribe-medication-smiling-cheerful_1258-61179.jpg',
                  onAccepted: (context) {
                    print("ACCEPTED!");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
