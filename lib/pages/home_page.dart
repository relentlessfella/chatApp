import 'package:first_app/components/user_tile.dart';
import 'package:first_app/pages/chat_page.dart';
import 'package:first_app/services/auth/auth_service.dart';
import 'package:first_app/components/my_drawer.dart';
import 'package:first_app/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  //chat & auth service
  final ChatService _chatService = ChatService();
  final AuthService _authService = AuthService();

  void logout() {
    //get auth service
    // ignore: no_leading_underscores_for_local_identifiers
    final _auth = AuthService();
    _auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      drawer: const MyDrawer(),
      body: _buildUserList(),
    );
  }

  Widget _buildUserList() {
    return StreamBuilder(
        stream: _chatService.getUsersStream(),
        builder: (context, snapshot) {
          //error
          if (snapshot.hasError) {
            return const Text("Error");
          }
          //loading...
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Text("Loading...");
          }
          //return ListView
          return ListView(
            children: snapshot.data!
                .map<Widget>(
                  (userData) => _buildUserListItem(userData, context),
                )
                .toList(),
          );
        });
  }

  //build individual list tile for user
  Widget _buildUserListItem(
      Map<String, dynamic> userData, BuildContext context) {
    //display all users except current user
    if (userData["email"] != _authService.getCurrentUser()!.email) {
      return UserTile(
        text: userData["email"],
        onTap: () {
          //tapped on a user -> go to chat page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatPage(
                receiverEmail: userData["email"],
                receiverID: userData["uid"],
              ),
            ),
          );
        },
      );
    } else {
      return Container();
    }
  }
}
