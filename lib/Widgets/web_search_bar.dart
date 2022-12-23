import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/constants.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: dividerColor,
          ),
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: searchBarColor,
            prefixIcon: const Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              child: Icon(
                Icons.search,
                size: 20,
              ),
            ),
            hintText: 'Search or Start a new Chat',
            hintStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            contentPadding: const EdgeInsets.all(10)),
      ),
    );
  }
}
