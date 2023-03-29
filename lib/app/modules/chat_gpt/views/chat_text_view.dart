
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../../../../constants/constant.dart';
import '../../../../provider/chats_provider.dart';
import '../../../../provider/models_provider.dart';
import '../../../../screens/chat_screens.dart';

class ChatTextViewGPT extends StatelessWidget {
  const ChatTextViewGPT({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ModelsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => ChatProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter ChatBOT',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            appBarTheme: AppBarTheme(
              color: cardColor,
            )),
        home: const ChatScreen(),
      ),
    );
  }
}