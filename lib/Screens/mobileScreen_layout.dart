import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/Tabs/myCalls_page.dart';
import 'package:whatsapp_responsive_ui/Tabs/myChat_page.dart';

import '../Tabs/myCommunity_Page.dart';
import '../Tabs/myStatus_page.dart';
import '../constants.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("WhatsApp"),

          //* elevation shadow
          elevation: 0,

          //* App Bar Color Background
          backgroundColor: appBarColor,

          //* Corner Action Bar Items
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            PopupMenuButton(
                color: backgroundColor,
                icon: const Icon(Icons.more_vert),
                itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text("New Group"),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text("New Broadcast"),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text("Linked Devices"),
                      ),
                      const PopupMenuItem(
                        value: 4,
                        child: Text("Starred Messages"),
                      ),
                      const PopupMenuItem(
                        value: 4,
                        child: Text("Payments"),
                      ),
                      const PopupMenuItem(
                        value: 4,
                        child: Text("Settings"),
                      ),
                    ])
          ],

          //* Bottom Sliding Bars
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                child: Icon(Icons.group),
              ),
              Tab(
                child: Text("CHATS"),
              ),
              Tab(
                child: Text("STATUS"),
              ),
              Tab(
                child: Text("CALLS"),
              ),
            ],
          ),
        ),
        body: const TabBarView(children: [
          MyCommunityPage(),
          MyChatPage(),
          MyStatusPage(),
          MyCallsPage(),
        ]),
      ),
    );
  }
}
