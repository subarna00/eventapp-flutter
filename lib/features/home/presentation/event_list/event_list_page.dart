import 'package:eventapp/features/home/presentation/event_list/event_category.dart';
import 'package:eventapp/features/home/presentation/event_list/event_list.dart';
import 'package:eventapp/features/home/presentation/event_list/search_box.dart';
import 'package:eventapp/repository/model/mock.dart';
import 'package:flutter/material.dart';

class EventListPage extends StatefulWidget {
  const EventListPage({super.key});

  @override
  State<EventListPage> createState() => _EventListPageState();
}

class _EventListPageState extends State<EventListPage> {
  late ValueNotifier<String> _categoryNotifier;

  @override
  void initState() {
    super.initState();
    _categoryNotifier = ValueNotifier(categories[0]);
  }

  @override
  void dispose() {
    _categoryNotifier.dispose();
    super.dispose();
  }

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
        children: [
          const SizedBox(
            height: 16,
          ),
          const SearchBox(),
          const SizedBox(
            height: 16,
          ),
          ValueListenableBuilder(
            valueListenable: _categoryNotifier,
            builder: (context, category, _) {
              return EventCategory(
                  activeCategory: category,
                  onCategorySelected: (category) =>
                      _categoryNotifier.value = category);
            },
          ),
          ValueListenableBuilder(
            valueListenable: _categoryNotifier,
            builder: (context, category, _) {
              return Expanded(child: EventList(category: category));
            },
          )
        ],
      ),
    );
  }
}
