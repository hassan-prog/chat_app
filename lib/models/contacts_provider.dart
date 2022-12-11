import 'package:flutter/foundation.dart';

import './contact.dart';
import './message.dart';

class ContactsProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  List<Contact> _contacts = [
    Contact(
        name: 'hassan',
        msg: [
          {
            'isMe': true,
            'message': 'Hello',
          },
          {
            'isMe': false,
            'message': 'Hi!',
          },
          {
            'isMe': true,
            'message': 'How are you?',
          },
          {
            'isMe': false,
            'message': 'Good, what about you?',
          },
          {
            'isMe': true,
            'message': 'Also good, what`s up',
          },
          {
            'isMe': true,
            'message': 'blah-blah-blah',
          },
        ],
        date: DateTime.now(),
        id: '0',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/4/41/Bernd_Knox_Knochenhauer-Heidenreich.jpg'),
    Contact(
        name: 'ahmed',
        msg: [
          {
            'isMe': true,
            'message': 'Hello',
          },
          {
            'isMe': false,
            'message': 'Hi!',
          },
          {
            'isMe': true,
            'message': 'How are you?',
          },
          {
            'isMe': false,
            'message': 'Good, what about you?',
          },
          {
            'isMe': true,
            'message': 'Also good, what`s up',
          },
          {
            'isMe': true,
            'message': 'blah-blah-blah',
          },
        ],
        date: DateTime.now(),
        id: '1',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/4/41/Bernd_Knox_Knochenhauer-Heidenreich.jpg'),
    Contact(
        name: 'adel',
        msg: [
          {
            'isMe': true,
            'message': 'Hello',
          },
          {
            'isMe': false,
            'message': 'Hi!',
          },
          {
            'isMe': true,
            'message': 'How are you?',
          },
          {
            'isMe': false,
            'message': 'Good, what about you?',
          },
          {
            'isMe': true,
            'message': 'Also good, what`s up',
          },
          {
            'isMe': true,
            'message': 'blah-blah-blah',
          },
        ],
        date: DateTime.now(),
        id: '2',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/4/41/Bernd_Knox_Knochenhauer-Heidenreich.jpg'),
    Contact(
        name: 'ali',
        msg: [
          {
            'isMe': true,
            'message': 'Hello',
          },
          {
            'isMe': false,
            'message': 'Hi!',
          },
          {
            'isMe': true,
            'message': 'How are you?',
          },
          {
            'isMe': false,
            'message': 'Good, what about you?',
          },
          {
            'isMe': true,
            'message': 'Also good, what`s up',
          },
          {
            'isMe': true,
            'message': 'blah-blah-blah',
          },
        ],
        date: DateTime.now(),
        id: '3',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/4/41/Bernd_Knox_Knochenhauer-Heidenreich.jpg'),
  ];

  List<Contact> get contacts {
    return [..._contacts];
  }
}
