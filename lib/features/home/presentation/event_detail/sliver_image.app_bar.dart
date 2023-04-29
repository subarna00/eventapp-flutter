import 'package:flutter/material.dart';

import 'package:eventapp/repository/model/event.dart';

class SliverImageAppBar extends StatelessWidget {
  const SliverImageAppBar({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 16.0),
        child: CircleAvatar(
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_rounded),
          ),
        ),
      ),
      expandedHeight: MediaQuery.of(context).size.height * 0.3,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          event.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
