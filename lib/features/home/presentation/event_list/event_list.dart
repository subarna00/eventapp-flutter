import 'package:eventapp/di/di.dart';
import 'package:eventapp/features/home/presentation/event_list/event_item.dart';
import 'package:eventapp/navigation/home_navigation.dart';
import 'package:eventapp/repository/repository.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({
    Key? key,
    required this.category,
  }) : super(key: key);
  final String category;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getIt<EventRepository>().getEvents(category),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final events = snapshot.data;
            if (events == null || events.isEmpty) {
              return const Center(
                child: Text("No events nearby. Please check nearby."),
              );
            }
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
              itemCount: events.length,
            );
          }
          return const Center(child: CircularProgressIndicator());
        });
  }
}
