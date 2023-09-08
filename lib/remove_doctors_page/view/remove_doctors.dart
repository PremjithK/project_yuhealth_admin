import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/bold_elevated_buttons.dart';
import 'package:yu_health_admin/custom_widgets/doctor_remove_tile.dart';
import 'package:yu_health_admin/custom_widgets/feedback_cards.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';
import 'package:yu_health_admin/custom_widgets/text_types.dart';

class RemoveDoctorsPage extends StatelessWidget {
  RemoveDoctorsPage({super.key});

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
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
          child: Column(
            children: [
              const Center(
                child: MainHeading(
                  text: 'Remove Doctors',
                  fontSize: 30,
                ),
              ),
              heightspace(20),
              const Text('Swipe Right to Remove'),
              heightspace(10),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: DoctorRemovalTile(
                  name: 'Dr Vimal',
                  qualification: 'MBBS, MS',
                  department: 'ENT',
                  clinic: 'BMH',
                  imageURL: 'https://en.pimg.jp/018/206/992/1/18206992.jpg',
                  onRemoved: (context) {
                    print("REMOVED");
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        child: SizedBox(
          width: double.infinity,
          child: BoldElevatedButtonWithIcon(
            onPressed: () => {Navigator.pop(context)},
            label: 'Back',
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
