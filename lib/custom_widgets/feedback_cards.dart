import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:yu_health_admin/config/theme.dart';
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
    final theme = Theme.of(context).colorScheme;
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(color: theme.primary),
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
              const CircleAvatar(
                radius: 25,
              ),
              widthspace(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontFamily: fontFamily,
                      fontSize: 16,
                      fontVariations: [FontVariation('wght', 800)],
                    ),
                  ),
                  Text(
                    '@$username',
                    style: const TextStyle(
                      fontFamily: altFontFamily,
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Text(
                '${DateTime.now().day.toString()}-${DateTime.now().month.toString()}-${DateTime.now().year.toString()}',
                softWrap: true,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
          heightspace(20),
          Text(
            content,
            maxLines: 5,
            style: TextStyle(
              color: Colors.black.withOpacity(0.75),
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
