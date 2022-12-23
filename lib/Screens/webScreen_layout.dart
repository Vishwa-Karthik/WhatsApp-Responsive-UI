// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/Widgets/contact_list.dart';

import '../Widgets/web_profile_bar.dart';
import '../Widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        //todo column for 2 child
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [
                //todo web profle
                WebProfileBar(),

                //todo web search bar
                WebSearchBar(),

                //todo chat list
                ContactList(),
              ],
            ),
          ),
        ),
        // todo Chat Screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/backgroundImage.png',
              ),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    ));
  }
}
