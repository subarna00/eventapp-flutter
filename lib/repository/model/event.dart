import 'package:eventapp/repository/model/speaker.dart';

class Event {
  Event({
    required this.image,
    required this.startDate,
    this.endDate,
    required this.name,
    required this.location,
    required this.cost,
    this.discountCost,
    required this.description,
    required this.speakers,
    required this.categories,
  });

  final String image;
  final String startDate;
  final String? endDate;
  final String name;
  final String location;
  final String cost;
  final String? discountCost;
  final String description;
  final List<Speaker> speakers;
  final List<String> categories;
}
