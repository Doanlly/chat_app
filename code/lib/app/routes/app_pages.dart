import 'package:get/get.dart';

import '../modules/chat_image/bindings/chat_image_binding.dart';
import '../modules/chat_image/views/chat_image_view.dart';
import '../modules/chat_text/bindings/chat_text_binding.dart';
import '../modules/chat_text/views/chat_text_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/chat_gpt/views/chat_text_view.dart';
import '../modules/chat_gpt/bindings/chat_image_binding_gpt.dart';
import '../modules/home/views/home_view.dart';
import 'package:chat_gpt_flutter/screens/chat_screens.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.CHAT_IMAGE,
      page: () => const ChatImageView(),
      binding: ChatImageBinding(),
    ),
     GetPage(
      name: _Paths.CHAT_TEXT_GPT,
      page: () => const ChatTextViewGPT(),
      binding: 
      
      ChatTextBindingGPT(),
    ),
    GetPage(
      name: _Paths.CHAT_TEXT,
      page: () => const ChatTextView(),
      binding: ChatTextBinding(),
    ),
  ];
}
