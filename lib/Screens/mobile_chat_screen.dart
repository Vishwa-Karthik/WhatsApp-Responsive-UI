import 'package:flutter/material.dart';
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
    );
  }
}
