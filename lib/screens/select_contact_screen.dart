import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './messages_screen.dart';
import '../models/contacts_provider.dart';

// ignore: use_key_in_widget_constructors
class SelectContactScreen extends StatelessWidget {
  static const routeName = '/select-contact';

  @override
  Widget build(BuildContext context) {
    final contactsData = Provider.of<ContactsProvider>(context).contacts;

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
              onTap: () => Navigator.of(context).pushNamed(
                  MessagesScreen.routeName,
                  arguments: contactsData[i]),
              child: ListTile(
                title: Text(contactsData[i].name),
                leading: CircleAvatar(
                  radius: 22,
                  backgroundImage: NetworkImage(
                    contactsData[i].imgUrl,
                  ),
                ),
              ),
            ),
          ),
          itemCount: contactsData.length,
        ),
      ),
    );
  }
}
