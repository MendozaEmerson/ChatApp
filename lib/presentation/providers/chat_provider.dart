import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: "Hola Anaxágoras como te encuentras hoy?", fromWho: FromWho.me),
    Message(text: "Ya desentrañaste Asmopherus?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text)  async {
    
  }
}
