import 'package:flutter/material.dart';

import '../models/contact.dart';

class MessagesScreen extends StatelessWidget {
  static const routeName = '/messages';

  @override
  Widget build(BuildContext context) {
    final myContact = ModalRoute.of(context)!.settings.arguments as Contact;

    return Scaffold(
      appBar: AppBar(
        title: Text(myContact.name),
      ),
      body: Center(
        child: Text('messages'),
      ),
    );
  }
}
