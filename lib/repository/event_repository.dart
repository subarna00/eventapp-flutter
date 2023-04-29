import 'package:eventapp/features/home/home.dart';
import 'package:eventapp/repository/model/mock.dart';
import 'package:injectable/injectable.dart';

const delay = Duration(seconds: 2);

@injectable
class EventRepository {
  Future<List<Event>> getEvents(String? category) => Future.delayed(delay, () {
        if (category == null || category == "all") {
          return events;
        }
        return events
            .where((event) => event.categories.contains(category))
            .toList();
      });
}
