import 'package:flutter/material.dart';

class EventCategoryItem extends StatelessWidget {
  const EventCategoryItem(
      {super.key,
      required this.isActive,
      required this.text,
      required this.isFirst,
      required this.isLast});

  final bool isActive;
  final String text;
  final bool isLast;
  final bool isFirst;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      margin: isLast
          ? const EdgeInsets.only(right: 16)
          : EdgeInsets.only(left: isFirst ? 16 : 8),
      duration: const Duration(milliseconds: 1000),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: isActive ? const Color(0xFF214042) : Colors.transparent),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Center(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: isActive
                      ? const Color.fromARGB(255, 255, 255, 255)
                      : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
