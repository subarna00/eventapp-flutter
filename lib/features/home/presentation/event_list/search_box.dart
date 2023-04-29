import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  color: const Color(0x0F000000),
                  borderRadius: BorderRadius.circular(16)),
              child: TextFormField(
                textAlignVertical: TextAlignVertical.center,
                style: Theme.of(context).textTheme.bodyLarge,
                decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    prefixIconConstraints:
                        BoxConstraints.tight(const Size.fromRadius(18)),
                    hintText: 'Search By Event name',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.black26),
                    border: InputBorder.none),
              ),
            ),
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.send))
      ],
    );
  }
}
