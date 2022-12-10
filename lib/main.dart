import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/messages_screen.dart';
import './screens/select_contact_screen.dart';
import './screens/status_screen.dart';
import './screens/calls_screen.dart';
import './screens/tabs_screen.dart';
import './models/contacts_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => ContactsProvider(),
      child: MaterialApp(
        title: 'Chat App',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        routes: {
          '/': (ctx) => TabsScreen(),
          SelectContactScreen.routeName: (ctx) => SelectContactScreen(),
          CallsScreen.routeName: (ctx) => CallsScreen(),
          StatusScreen.routeName: (ctx) => StatusScreen(),
          MessagesScreen.routeName: (ctx) => MessagesScreen(),
        },
      ),
    );
  }
}
