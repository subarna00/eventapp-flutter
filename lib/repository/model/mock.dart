import 'package:eventapp/repository/model/event.dart';
import 'package:eventapp/repository/model/speaker.dart';

final List<String> categories = [
  'all',
  'art',
  'tech',
  'design',
  'movies',
  'business',
];

final List<Event> events = [
  Event(
      image: "assets/images/626310.jpeg",
      startDate: "2020/20/20",
      endDate: "2020/20/20",
      name: "asdasd",
      location: "asdasd",
      cost: "12",
      discountCost: "2",
      description: "asdasd asdasd",
      speakers: speakers.sublist(0, 4)),
  Event(
      image: "assets/images/626377.jpeg",
      startDate: "2020/20/20",
      endDate: "2020/20/20",
      name: "asdasd",
      location: "asdasd",
      cost: "12",
      discountCost: "2",
      description: "asdasd asdasd",
      speakers: speakers.sublist(0, 2)),
  Event(
      image: "assets/images/pp.jpg",
      startDate: "2020/20/20",
      endDate: "2020/20/20",
      name: "asdasd",
      location: "asdasd",
      cost: "12",
      discountCost: "2",
      description: "asdasd asdasd",
      speakers: speakers.sublist(2, 4)),
  Event(
      image: "assets/images/vis.jpeg",
      startDate: "2020/20/20",
      endDate: "2020/20/20",
      name: "asdasd",
      location: "asdasd",
      cost: "12",
      discountCost: "2",
      description: "asdasd asdasd",
      speakers: speakers.sublist(3, 4)),
];

final speakers = [
  Speaker(
      name: "hello 123",
      profession: "habibulla",
      bio: "k nah ho re vosda",
      imagePath: "assets/images/626310.jpeg"),
  Speaker(
      name: "hello 345",
      profession: "habibulla",
      bio: "k nah ho re vosda",
      imagePath: "assets/images/626310.jpeg"),
  Speaker(
      name: "hello 567",
      profession: "habibulla",
      bio: "k nah ho re vosda",
      imagePath: "assets/images/626310.jpeg"),
  Speaker(
      name: "hello 789",
      profession: "habibulla",
      bio: "k nah ho re vosda",
      imagePath: "assets/images/626310.jpeg"),
  Speaker(
      name: "hello 91011",
      profession: "habibulla",
      bio: "k nah ho re vosda",
      imagePath: "assets/images/626310.jpeg"),
];
