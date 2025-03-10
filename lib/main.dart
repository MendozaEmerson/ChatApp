import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/config/theme/app_theme.dart';
import 'package:yes_no_app/presentation/providers/chat_provider.dart';
import 'package:yes_no_app/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider( // Pone al nivel mas alto de la aplicacion a mi provider 
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider(),)
      ],
      child: MaterialApp(
        title: 'YesNo App',
        theme: AppTheme(selectedColor: 3).theme(),
        home: const ChatScreen()
      ),
    );
  }
}
