import 'package:eventapp/features/home/presentation/event_list/event_category.dart';
import 'package:eventapp/features/home/presentation/event_list/event_list.dart';
import 'package:eventapp/features/home/presentation/event_list/search_box.dart';
import 'package:flutter/material.dart';

class EventListPage extends StatelessWidget {
  const EventListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(child: FlutterLogo()),
        ),
        actions: const [Icon(Icons.notifications)],
        title: Text(
          "Subarna Uprety",
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: Column(
        children: const [
          SizedBox(
            height: 16,
          ),
          SearchBox(),
          SizedBox(
            height: 16,
          ),
          EventCategory(activeCategory: 'all'),
          Expanded(child: EventList())
        ],
      ),
    );
  }
}
