import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yu_health_admin/custom_widgets/spacing.dart';

class FeedbackCard extends StatelessWidget {
  FeedbackCard({
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CircleAvatar(),
              widthspace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 16,
                      fontVariations: [FontVariation('wght', 800)],
                    ),
                  ),
                  Text(
                    '@ $username',
                    style: const TextStyle(
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                '${DateTime.now().day.toString()}-${DateTime.now().month.toString()}-${DateTime.now().year.toString()}',
                softWrap: true,
                style: const TextStyle(
                  fontSize: 10,
                ),
              ),
            ],
          ),
          const Divider(),
          Text(
            content,
            maxLines: 5,
            style: const TextStyle(
              fontFamily: 'Inter',
              fontSize: 14,
              letterSpacing: 0,
              height: 1.25,
            ),
          ),
        ],
      ),
    );
  }
}
