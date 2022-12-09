import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import './messages_screen.dart';
import './select_contact_screen.dart';
import '../models/contact.dart';

class ChatsScreen extends StatelessWidget {
  final List<Contact> contacts = [
    Contact(name: 'hassan', msg: 'hello', date: DateTime.now(), id: '0'),
    Contact(name: 'ahmed', msg: 'hallo', date: DateTime.now(), id: '1'),
    Contact(name: 'mohamed', msg: 'hi', date: DateTime.now(), id: '2'),
    Contact(name: 'ali', msg: 'hola', date: DateTime.now(), id: '3'),
  ];
  @override
  Widget build(BuildContext context) {
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
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: GestureDetector(
              onTap: () => Navigator.of(context)
                  .pushNamed(MessagesScreen.routeName, arguments: contacts[i]),
              child: ListTile(
                title: Text(contacts[i].name),
                subtitle: Text(contacts[i].msg),
                trailing: Text(DateFormat.yMd()
                    .add_jm()
                    .format(contacts[i].date)
                    .toString()),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .pushNamed(SelectContactScreen.routeName, arguments: contacts);
        },
        child: Icon(Icons.chat),
      ),
    );
  }
}
