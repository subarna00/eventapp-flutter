import 'package:flutter/material.dart';

class PositionedButton extends StatelessWidget {
  const PositionedButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 16,
      right: 16,
      child: FilledButton(
          onPressed: () => onPressed.call(),
          style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.black87)),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .bodySmall
                ?.copyWith(color: Colors.white),
          )),
    );
  }
}
