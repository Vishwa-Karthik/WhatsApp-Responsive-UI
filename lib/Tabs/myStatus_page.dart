import 'package:flutter/material.dart';

import '../Screens/mobile_chat_screen.dart';
import '../Widgets/people_info.dart';

class MyStatusPage extends StatelessWidget {
  const MyStatusPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Row(
        children: [
          //todo my status Icon

          //todo = other status visibility
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: info.length,
              itemBuilder: ((context, index) {
                return InkWell(
                  onTap: () {},
                  child: ListTile(
                    //* Image
                    leading: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.teal,
                          width: 4,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 26,
                        backgroundImage: NetworkImage(
                          info[index]['profilePic'].toString(),
                        ),
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
                      info[index]['time'].toString(),
                      style: const TextStyle(
                        fontSize: 15,
                      ),
                    ),

                    // //* Time
                    // trailing: Text(
                    //   info[index]['time'].toString(),
                    //   style: const TextStyle(fontSize: 13, color: Colors.grey),
                    // ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
