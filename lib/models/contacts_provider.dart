import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

import './contact.dart';

class ContactsProvider with ChangeNotifier {
  // ignore: prefer_final_fields
  List<Contact> _contacts = [
    Contact(
        name: 'hassan',
        msg: 'hello',
        date: DateTime.now(),
        id: '0',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/4/41/Bernd_Knox_Knochenhauer-Heidenreich.jpg'),
    Contact(
        name: 'ahmed',
        msg: 'hallo',
        date: DateTime.now(),
        id: '1',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/4/41/Bernd_Knox_Knochenhauer-Heidenreich.jpg'),
    Contact(
        name: 'mohamed',
        msg: 'hi',
        date: DateTime.now(),
        id: '2',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/4/41/Bernd_Knox_Knochenhauer-Heidenreich.jpg'),
    Contact(
        name: 'ali',
        msg: 'hola',
        date: DateTime.now(),
        id: '3',
        imgUrl:
            'https://upload.wikimedia.org/wikipedia/commons/4/41/Bernd_Knox_Knochenhauer-Heidenreich.jpg'),
  ];

  List<Contact> get contacts {
    return [..._contacts];
  }
}
