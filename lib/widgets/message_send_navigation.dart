import 'dart:ffi';

import 'package:flutter/material.dart';

class MessageSendNavigation extends StatelessWidget {
  final TextEditingController _sendMessageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.5,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: TextField(
                  cursorColor: Colors.black,
                  controller: _sendMessageController,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Send Message',
                    icon: Icon(
                      Icons.emoji_emotions_outlined,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 9),
              height: 40,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                color: Colors.grey.shade200,
              ),
              child: const Icon(
                Icons.mic,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.primary,
              ),
              child: const Icon(
                Icons.send,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
