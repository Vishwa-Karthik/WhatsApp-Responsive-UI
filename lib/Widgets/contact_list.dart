import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/Screens/mobile_chat_screen.dart';
import 'package:whatsapp_responsive_ui/Widgets/people_info.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: info.length,
        itemBuilder: ((context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const MobileChatScreen(),
              ));
            },
            child: ListTile(
              //* Image
              leading: CircleAvatar(
                radius: 26,
                backgroundImage: NetworkImage(
                  info[index]['profilePic'].toString(),
                ),
              ),

              //* Title Name
              title: Text(
                info[index]['name'].toString(),
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),

              //* Message
              subtitle: Text(
                info[index]['message'].toString(),
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),

              //* Time
              trailing: Text(
                info[index]['time'].toString(),
                style: const TextStyle(fontSize: 13, color: Colors.grey),
              ),
            ),
          );
        }),
      ),
    );
  }
}
