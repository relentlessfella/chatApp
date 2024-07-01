import 'dart:nativewrappers/_internal/vm/lib/ffi_allocation_patch.dart';

import 'package:first_app/services/auth/auth_service.dart';
import 'package:first_app/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String receiverEmail;
  final String receiverID;
  ChatPage({
    super.key,
    required this.receiverEmail,
    required this.receiverID,
  });

  //text controller
  final TextEditingController _messageController = TextEditingController();

  //chat & auth services
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  //send message
  void sendMessage() async {
    //send only if text is present in textfield
    if (_messageController.text.isNotEmpty) {
      //send message
      await _chatService.sendMessage(receiverID, _messageController.text);

      //clear text controller
      _messageController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(receiverEmail)),
    );
  }
}
