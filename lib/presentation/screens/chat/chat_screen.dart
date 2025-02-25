import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_mssg_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_mssg_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://img.game8.co/4049324/2dc95b06290ebe8ba2804d14eb9aee13.png/show"),
          ),
        ),
        title: Text("Anaxagoras"),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              controller: chatProvider.scrollControler,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
                return (message.fromWho == FromWho.hers)
                    ? HerMssgBubble(message: message)
                    : MyMssgBubble(
                        message: message,
                      );
              },
            )),
            MessageFieldBox(
              //onValue: (value) => chatProvider.sendMessage(value), // linea similar a la de abajo
              onValue: chatProvider.sendMessage,
            ),
          ],
        ),
      ),
    );
  }
}
