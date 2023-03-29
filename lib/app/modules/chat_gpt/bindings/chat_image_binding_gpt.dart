import 'package:get/get.dart';

import '../controllers/chat_image_controller_gpt.dart';

class ChatTextBindingGPT extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatTextControllerGPT>(
      () => const ChatTextControllerGPT(),
    );
  }
}
