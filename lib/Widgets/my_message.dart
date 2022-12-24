import 'package:flutter/material.dart';
import 'package:whatsapp_responsive_ui/constants.dart';

class MyMessageCard extends StatelessWidget {
  final String message;
  final String date;
  const MyMessageCard({
    super.key,
    required this.message,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: messageColor,
          margin: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 5,
          ),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 30,
                top: 5,
                bottom: 20,
              ),
              child: Text(
                message,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: [
                    //* Date Timings
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Colors.white60,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Icon(
                      Icons.done_all,
                      size: 20,
                      color: Colors.white60,
                    )
                  ],
                ))
          ]),
        ),
      ),
    );
  }
}
