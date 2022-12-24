import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/constants.dart';

import 'people_info.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.70,
      decoration: BoxDecoration(
        color: webAppBarColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(06),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              //* App Bar with photo and image
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/736x/79/66/f4/7966f40c74515adad5be572a660a0415.jpg'),
                radius: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.01,
              ),
              Text(
                info[0]['name'].toString(),
              ),
            ],
          ),

          //* Icon buttons and options
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
