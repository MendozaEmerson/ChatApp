import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollControler = ScrollController();
  final GetYesNoAnswer getYesNoAnswer = GetYesNoAnswer();

  List<Message> messageList = [
    Message(
        text: "Hola Anaxágoras como te encuentras hoy?", fromWho: FromWho.me),
    Message(text: "Ya desentrañaste Asmopherus?", fromWho: FromWho.me),
  ];

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    final newMessage = Message(text: text, fromWho: FromWho.me);
    messageList.add(newMessage);

    if (text.endsWith("?")) {
      herReply();
    }

    notifyListeners(); // notifica cambios a todos los que escuchan
    moveToScrollToBottom();
  }

  Future<void> herReply() async {
    final herMessage = await getYesNoAnswer.getAnswer();
    messageList.add(herMessage);

    notifyListeners();
    moveToScrollToBottom();
  }

  Future<void> moveToScrollToBottom() async {
    await Future.delayed(Duration(
        milliseconds: 100)); // Espera a que el mensaje se procese y envie UX

    scrollControler.animateTo(scrollControler.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }
}
