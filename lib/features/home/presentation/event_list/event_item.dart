import 'package:eventapp/extensions/event_extensions.dart';
import 'package:flutter/material.dart';

import 'package:eventapp/repository/model/event.dart';

class EventItem extends StatelessWidget {
  const EventItem({
    Key? key,
    required this.event,
  }) : super(key: key);
  final Event event;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 12.0),
          child: SizedBox(
              width: 70,
              child: AspectRatio(
                  aspectRatio: 0.6,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      event.image,
                      fit: BoxFit.fill,
                    ),
                  ))),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                event.presentableDate(),
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                event.name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                event.location,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0, left: 8),
          child: Column(
            children: [
              Text(
                // ignore: unrelated_type_equality_checks
                event.cost == 0 ? "free" : '${event.cost}\$',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                event.discountCost ?? '',
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(decoration: TextDecoration.lineThrough),
              ),
            ],
          ),
        )
      ],
    );
  }
}
