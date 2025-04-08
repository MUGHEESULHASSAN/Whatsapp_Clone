import "package:flutter/material.dart";
import "package:mobile_application_development/pages/chat_page.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController ? _controller;

  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this,initialIndex: 0);
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("WhatsApp"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          PopupMenuButton<String>(itemBuilder: (BuildContext context){
            return[
              PopupMenuItem(child: Text("New Group"),value: "New Group",),
              PopupMenuItem(child: Text("New Broadcast"),value: "New Broadcast",),
              PopupMenuItem(child: Text("WhatsApp Web"),value: "WhatsApp Web",),
              PopupMenuItem(child: Text("Starred Messages"),value: "Starred Messages",),
              PopupMenuItem(child: Text("Settings"),value: "Settings",),




            ];
          })
          ],
        bottom: TabBar(
           
          controller: _controller,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS",),
            Tab(text: "STATUS",),
            Tab(text: "CALLS",),
          ],
        )
          

      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Center(child: Text("Camera"),),
          ChatPage(),
          Center(child: Text("Status"),),
          Center(child: Text("Calls"),),
        ],
      ),

    );
  }
}