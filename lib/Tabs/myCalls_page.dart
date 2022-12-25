import 'package:flutter/material.dart';
import '../Widgets/people_info.dart';

class MyCallsPage extends StatelessWidget {
  const MyCallsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: info.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                info[index]['profilePic'].toString(),
              ),
            ),
            title: Text(
              info[index]['name'].toString(),
            ),
            subtitle: Text(
              info[index]['time'].toString(),
            ),
            trailing: Icon(
              index % 2 == 0 ? Icons.call : Icons.video_call,
              color: Colors.teal,
            ),
          );
        });
  }
}
