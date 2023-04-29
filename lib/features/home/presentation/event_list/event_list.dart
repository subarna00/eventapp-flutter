import 'package:eventapp/di/di.dart';
import 'package:eventapp/features/home/presentation/event_list/event_item.dart';
import 'package:eventapp/repository/model/mock.dart';
import 'package:eventapp/navigation/home_navigation.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
              onTap: () =>
                  getIt<HomeNavigation>().openEventDetail(events[index]),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: EventItem(event: events[index]),
              ));
        },
        separatorBuilder: (context, index) {
          return const Divider(
            indent: 16,
            endIndent: 16,
            height: 0,
          );
        },
        itemCount: events.length);
  }
}
