import 'package:flutter/material.dart';

import './select_contact_screen.dart';
import './calls_screen.dart';
import './chats_screen.dart';
import './communities_screen.dart';
import './status_screen.dart';

// ignore: use_key_in_widget_constructors
class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Chat App',
            style: TextStyle(fontSize: 24),
          ),
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.group),
              ),
              Tab(
                child: Text(
                  'Chats',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Tab(
                child: Text(
                  'Calls',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.camera_alt_outlined,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.search_outlined,
              ),
              onPressed: () {},
            ),
            PopupMenuButton(
              onSelected: (int selectedValue) {
                if (selectedValue == 0) {
                  setState(() {
                    Navigator.of(context)
                        .pushNamed(SelectContactScreen.routeName);
                  });
                }
                if (selectedValue == 1) {
                  setState(() {
                    Navigator.of(context).pushNamed(StatusScreen.routeName);
                  });
                }
                if (selectedValue == 2) {
                  setState(() {
                    Navigator.of(context).pushNamed(CallsScreen.routeName);
                  });
                }
              },
              icon: const Icon(Icons.more_vert),
              itemBuilder: (_) => [
                const PopupMenuItem(
                  value: 0,
                  child: Text(
                    'Select Contacts',
                  ),
                ),
                const PopupMenuItem(
                  value: 1,
                  child: Text(
                    'Status',
                  ),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text(
                    'Calls',
                  ),
                ),
              ],
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CommunitiesScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallsScreen(),
          ],
        ),
      ),
    );
  }
}
