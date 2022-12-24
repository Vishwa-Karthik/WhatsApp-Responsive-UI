import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/Widgets/chat_list.dart';
import 'package:whatsapp_responsive_ui/constants.dart';

import '../Widgets/people_info.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name'].toString()),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.video_call_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.white,
            ),
          ),

          //* more Button
          PopupMenuButton(
            color: backgroundColor,
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Text("View Contact"),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text("Media, Links and Docs"),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text("Search"),
              ),
              const PopupMenuItem(
                value: 4,
                child: Text("Mute Notification"),
              ),
              const PopupMenuItem(
                value: 5,
                child: Text("Disappering Messages "),
              ),
              const PopupMenuItem(
                value: 6,
                child: Text("Wallpaper"),
              ),
              const PopupMenuItem(
                value: 7,
                child: Text("More   ->"),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          //* chat list
          const Expanded(
            child: ChatList(),
          ),

          //* text input
          TextField(
            decoration: InputDecoration(
              fillColor: mobileChatBoxColor,
              prefixIcon: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Icon(
                  Icons.emoji_emotions,
                  color: Colors.grey,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.attach_file,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.money,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
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
        ],
      ),
    );
  }
}
