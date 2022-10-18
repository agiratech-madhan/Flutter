class Message {
  final String text;
  final DateTime date;
  final bool isSentByMe;
  const Message({
    required this.text,
    required this.date,
    required this.isSentByMe,
  });
}

List<Message> messages = [
  Message(
      text: 'Hi Madhan',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false),
  Message(
      text: 'who r u',
      date: DateTime.now().subtract(Duration(days: 1)),
      isSentByMe: true),
  Message(
      text: 'I"m  too busy',
      date: DateTime.now().subtract(Duration(days: 2)),
      isSentByMe: true),
  Message(
      text: 'Hi Madhan',
      date: DateTime.now().subtract(Duration(minutes: 10)),
      isSentByMe: false),
  Message(
      text: 'working in progress',
      date: DateTime.now().subtract(Duration(days: 4)),
      isSentByMe: false),
  Message(
      text: 'Hi Madhan',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true),
  Message(
      text: 'Hi Madhan',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false),
  Message(
      text: 'Hi Madhan',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: true),
  Message(
      text: 'working in progress',
      date: DateTime.now().subtract(Duration(days: 4)),
      isSentByMe: false),
  Message(
      text: 'Hi Madhan',
      date: DateTime.now().subtract(Duration(days: 6)),
      isSentByMe: true),
  Message(
      text: 'Hi Madhan',
      date: DateTime.now().subtract(Duration(minutes: 1)),
      isSentByMe: false),
  Message(
      text: 'Hi Madhan',
      date: DateTime.now().subtract(Duration(days: 7)),
      isSentByMe: true),
].reversed.toList();