import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/doctor_remove_tile.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';
import 'package:yu_health_admin/custom_widgets/text_types.dart';

class RemoveDoctorsPage extends StatelessWidget {
  const RemoveDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;
    //final deviceHeight = MediaQuery.of(context).size.height;
    //final deviceWidth = MediaQuery.of(context).size.width;

    // UI
    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Doctors'),
      ),
      backgroundColor: theme.background,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Swipe Right to Remove'),
              heightspace(20),
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
    );
  }
}
