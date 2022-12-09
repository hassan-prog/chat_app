import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/contact.dart';
import './messages_screen.dart';

class SelectContactScreen extends StatelessWidget {
  static const routeName = '/select-contact';

  @override
  Widget build(BuildContext context) {
    final contacts =
        ModalRoute.of(context)!.settings.arguments as List<Contact>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Contact'),
      ),
      body: Container(
        margin: const EdgeInsets.only(
          top: 8,
        ),
        height: MediaQuery.of(context).size.height -
            AppBar().preferredSize.height -
            MediaQuery.of(context).padding.top,
        child: ListView.builder(
          itemBuilder: (context, i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: GestureDetector(
              onTap: () => Navigator.of(context)
                  .pushNamed(MessagesScreen.routeName, arguments: contacts[i]),
              child: ListTile(
                title: Text(contacts[i].name),
                leading: const Icon(
                  Icons.person_pin,
                  size: 65,
                ),
              ),
            ),
          ),
          itemCount: contacts.length,
        ),
      ),
    );
  }
}
