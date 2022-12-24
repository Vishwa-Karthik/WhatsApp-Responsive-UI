// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/Widgets/chat_list.dart';
import 'package:whatsapp_responsive_ui/Widgets/contact_list.dart';
import 'package:whatsapp_responsive_ui/Widgets/web_chat_app_bar.dart';
import 'package:whatsapp_responsive_ui/constants.dart';

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
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            //todo Chat App Bar
            const WebChatAppBar(),
            const SizedBox(
              height: 10,
            ),

            //todo Chats
            const Expanded(
              child: ChatList(),
            ),

            //todo enter message
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: dividerColor,
                  ),
                ),
                color: chatBarMessage,
              ),
              child: Row(children: [
                //* emoji icon
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  ),
                ),
                //* file attachment
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.attach_file_outlined,
                    color: Colors.grey,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10,
                      right: 15,
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        fillColor: searchBarColor,
                        filled: true,
                        hintText: 'Type a message',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                //* mic button
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic,
                    color: Colors.grey,
                  ),
                ),
              ]),
            ),
          ]),
        ),
      ],
    ));
  }
}
