import 'package:eventapp/extensions/event_extensions.dart';
import 'package:flutter/material.dart';

import 'package:eventapp/repository/model/event.dart';

class EventSection extends StatelessWidget {
  const EventSection({
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
            Row(
              children: [
                Expanded(
                  child: Text(
                    event.name,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.bookmark_border_rounded))
              ],
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              event.presentableDate(),
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Text(
              event.location,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Price for 1 person",
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
                if (event.discountCost != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(
                      event.discountCost == '0'
                          ? 'free'
                          : '${event.discountCost}\$',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(decoration: TextDecoration.lineThrough),
                    ),
                  ),
                Text(
                  event.cost == '0' ? 'free' : '${event.cost}\$',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
