import "package:flutter/material.dart";
import "package:mobile_application_development/custom_ui/custom_ui.dart";
import "package:mobile_application_development/model/chatmodel.dart";

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<Chatmodel> chat=[
    Chatmodel("Mughees", "person.svg", false, "12:00", "Hi Everyone"),
    Chatmodel("Zill e Huma", "person.svg", false, "12:00", "Hi Everyone"),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.chat),),
      body: ListView.builder(
        itemCount: chat.length,
        itemBuilder: (context,index)=>CustomUi(
          chatmodel: chat[index],
        ),


        


      ),
    );
  }
}