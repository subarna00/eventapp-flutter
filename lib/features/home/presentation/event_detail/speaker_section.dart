import 'package:flutter/material.dart';

import 'package:eventapp/repository/model/event.dart';

class SpeakerSection extends StatelessWidget {
  const SpeakerSection({
    Key? key,
    required this.event,
  }) : super(key: key);
  final Event event;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              "Speaker",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(mainAxisSize: MainAxisSize.min, children: [
              ...List.generate(
                  event.speakers.length,
                  (index) => IntrinsicWidth(
                        child: ListTile(
                          leading: CircleAvatar(
                            child: ClipOval(
                              child: Image.asset(
                                event.speakers[index].imagePath,
                              ),
                            ),
                          ),
                          title: Text(
                            event.speakers[index].name,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          subtitle: Text(
                            event.speakers[index].profession,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                      ))
            ]),
          )
        ],
      ),
    );
  }
}
