import 'package:flutter/material.dart';

import './screens/messages_screen.dart';
import './screens/select_contact_screen.dart';
import './screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (ctx) => TabsScreen(),
        SelectContactScreen.routeName: (ctx) => SelectContactScreen(),
        MessagesScreen.routeName: (ctx) => MessagesScreen(),
      },
    );
  }
}
