class Message {
  final List<Map> _messages;

  Message(this._messages);

  List<Map> get messages {
    return [..._messages];
  }
}
