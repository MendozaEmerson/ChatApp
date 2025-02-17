import 'package:flutter/material.dart';

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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 120,
              itemBuilder: (context, index) {
                return Text("Indice: $index");
              },
            )),
            Text("End Screen")
          ],
        ),
      ),
    );
  }
}
