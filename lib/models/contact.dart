import './message.dart';

class Contact {
  final String name;
  final List<Map> msg;
  final DateTime date;
  final String id;
  final String imgUrl;

  Contact({
    required this.name,
    required this.msg,
    required this.date,
    required this.id,
    required this.imgUrl,
  });
}
