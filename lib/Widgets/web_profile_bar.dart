import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/Widgets/people_info.dart';
import 'package:whatsapp_responsive_ui/constants.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        border: Border(
          right: BorderSide(
            color: dividerColor,
          ),
        ),
        color: webAppBarColor,
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        //* logo
        const CircleAvatar(
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/736x/79/66/f4/7966f40c74515adad5be572a660a0415.jpg'),
        ),
        const SizedBox(
          width: 25,
        ),

        //todo 2 logo together

        Row(children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ]),
      ]),
    );
  }
}
