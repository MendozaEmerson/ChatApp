import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    //final color = Theme.of(context).colorScheme;

    final outlineInputBorde = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputDecoration = InputDecoration(
        enabledBorder: outlineInputBorde,
        focusedBorder: outlineInputBorde,
        filled: true,
        suffixIcon: IconButton(
          onPressed: () {
            print("Valor escrito enviado ???");
          },
          icon: Icon(Icons.send_outlined),
        ));

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print(" Submited value: $value");
      },
      onChanged: (value) {
        print("changed: $value");
      },
    );
  }
}
