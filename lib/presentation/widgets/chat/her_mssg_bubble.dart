import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMssgBubble extends StatelessWidget {
  final Message message;
  const HerMssgBubble({super.key, required this.message});

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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              message.text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        _ImageBubble(image: message.imageUrl!,),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String image;

  const _ImageBubble({required this.image});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        image,
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
