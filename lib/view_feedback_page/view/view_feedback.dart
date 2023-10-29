import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/feedback_cards.dart';

class ViewFeedbackPage extends StatelessWidget {
  const ViewFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    // UI
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text('User Feedback'),
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          FeedbackCard(
            title: 'Example Title',
            username: 'Michael',
            content:
                'Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis dolor voluptates eos at enim officiis delectus dolorum, quos voluptatum recusandae veritatis fugit? Doloribus, incidunt tempore?',
          ),
        ],
      ),
    );
  }
}
