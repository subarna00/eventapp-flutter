import 'package:eventapp/features/home/presentation/event_detail/about_section.dart';
import 'package:eventapp/features/home/presentation/event_detail/event_section.dart';
import 'package:eventapp/features/home/presentation/event_detail/sliver_image.app_bar.dart';
import 'package:eventapp/features/home/presentation/event_detail/speaker_section.dart';
import 'package:eventapp/widgets/positioned_button.dart';
import 'package:flutter/material.dart';

import 'package:eventapp/repository/model/event.dart';

class EventDetailPage extends StatelessWidget {
  const EventDetailPage({
    Key? key,
    required this.event,
  }) : super(key: key);
  final Event event;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          constraints: const BoxConstraints(minHeight: double.infinity),
          child: Stack(
            children: [
              CustomScrollView(
                slivers: [
                  SliverImageAppBar(event: event),
                  EventSection(event: event),
                  SpeakerSection(event: event),
                  AboutSection(event: event),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: SingleChildScrollView(
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         EventSection(event: event),
              //         SpeakerSection(event: event),
              //         AboutSection(event: event),
              //       ],
              //     ),
              //   ),
              // ),
              PositionedButton(text: "Book", onPressed: () {})
            ],
          ),
        ),
      ),
    );
  }
}
