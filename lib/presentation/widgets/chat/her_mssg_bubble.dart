import 'package:flutter/material.dart';

class HerMssgBubble extends StatelessWidget {
  const HerMssgBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              "Mensajes de ella: Hola mundo",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        _ImageBubble(),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        "https://yesno.wtf/assets/no/11-e6b930256265890554c1464973ebba55.gif",
        width: size.width * 0.7,
        height: 120,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 120,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: const Text(" Anaxagoras esta meditando que poner......"),
          );
        },
      ),
    );
  }
}
