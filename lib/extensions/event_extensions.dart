import 'package:eventapp/repository/model/event.dart';

extension XEvent on Event {
  String presentableDate() {
    if (endDate?.isNotEmpty ?? false) {
      return '$startDate - $endDate';
    }
    return startDate;
  }
}
