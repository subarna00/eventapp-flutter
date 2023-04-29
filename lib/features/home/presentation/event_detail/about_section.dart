import 'package:flutter/material.dart';

import 'package:eventapp/repository/model/event.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({
    Key? key,
    required this.event,
  }) : super(key: key);
  final Event event;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "About",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text(
              event.description,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 48,
            )
          ],
        ),
      ),
    );
  }
}
