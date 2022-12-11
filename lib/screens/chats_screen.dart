import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import './messages_screen.dart';
import './select_contact_screen.dart';
import '../models/contacts_provider.dart';

// ignore: use_key_in_widget_constructors
class ChatsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final contactsData = Provider.of<ContactsProvider>(context).contacts;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 8,
        ),
        height: MediaQuery.of(context).size.height -
            AppBar().preferredSize.height -
            MediaQuery.of(context).padding.top,
        child: ListView.builder(
          itemBuilder: (context, i) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamed(
                MessagesScreen.routeName,
                arguments: contactsData[i],
              ),
              child: ListTile(
                title: Text(contactsData[i].name),
                subtitle: Text(contactsData[i].msg.last['message']),
                trailing: Text(
                  DateFormat.yMd()
                      .add_jm()
                      .format(contactsData[i].date)
                      .toString(),
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                ),
                leading: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(
                        contactsData[i].imgUrl,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          itemCount: contactsData.length,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(SelectContactScreen.routeName,
              arguments: contactsData);
        },
        child: const Icon(Icons.chat),
      ),
    );
  }
}
