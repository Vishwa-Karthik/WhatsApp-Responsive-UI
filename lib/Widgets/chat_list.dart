import 'package:flutter/cupertino.dart';
import 'package:whatsapp_responsive_ui/Widgets/my_message.dart';
import 'package:whatsapp_responsive_ui/Widgets/sender_message.dart';
import 'people_info.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        if (messages[index]['isMe'] == true) {
          //todo MyMessage -> Card
          return MyMessageCard(
            message: messages[index]['text'].toString(),
            date: messages[index]['time'].toString(),
          );
        }
        //todo senderMessage -> Card
        return MySenderCard(
          message: messages[index]['text'].toString(),
          date: messages[index]['time'].toString(),
        );
      },
    );
  }
}
