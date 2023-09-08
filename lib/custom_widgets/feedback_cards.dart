import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';

class FeedbackCard extends StatelessWidget {
  const FeedbackCard({
    required this.title,
    required this.username,
    required this.content,
    super.key,
  });
  //
  final String title;
  final String username;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onBackground,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold,
              letterSpacing: 1,
              // fontVariations: [FontVariation('wght', 800)],
            ),
          ),
          Text(
            'from: @$username',
            style: TextStyle(
              fontFamily: 'Inter',
            ),
          ),
          heightspace(10),
          Text(
            content,
            maxLines: 5,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              letterSpacing: -0.2,
            ),
          ),
        ],
      ),
    );
  }
}
