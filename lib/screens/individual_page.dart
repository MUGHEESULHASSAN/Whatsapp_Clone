import "package:emoji_picker_flutter/emoji_picker_flutter.dart";
import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "package:mobile_application_development/model/chatmodel.dart";


class IndividualPage extends StatefulWidget {
    final Chatmodel chatmodel;
  
  const IndividualPage({super.key, required this .chatmodel});

  @override
  State<IndividualPage> createState() => _IndividualPageState();
}

class _IndividualPageState extends State<IndividualPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leadingWidth: 100,
        titleSpacing: 0,
        leading:InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.arrow_back,
              size: 24,),
              CircleAvatar(
              child: SvgPicture.asset(
                widget.chatmodel.isGroup ? "assets/group.svg" : "assets/person.svg",
              color: Colors.white,
              height: 30,
              width: 30,),                
                radius:30,
                backgroundColor: Colors.blueGrey,
                                
          
              )
            ],
          ),
        ),
        title:InkWell(

          child: Container(
            margin: EdgeInsets.all(6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.chatmodel.name,
                style:TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ) ,),
                Text("last seen today at 12:05",
                style:TextStyle(
                  fontSize:12,
                ))
              ],
            ),
          ),
        )
        ,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.video_call)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          PopupMenuButton<String>(itemBuilder: (BuildContext context){
            return[
              PopupMenuItem(child: Text("View Contact"),value: "View Contact",),
              PopupMenuItem(child: Text("Media,Links,Documents"),value: "Media,Links,Documents",),
              PopupMenuItem(child: Text("WhatsApp Web"),value: "WhatsApp Web",),
              PopupMenuItem(child: Text("Search"),value: "Search",),
              PopupMenuItem(child: Text("Mute Notification"),value: "Mute Notification",),
              PopupMenuItem(child: Text("Wallpaper"),value: "Wallpaper",),




            ];
          })
        ],

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            ListView(
              

            )
            ,
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width-60,
                        child: Card(
                          margin:EdgeInsets.only(left: 2,right: 2,bottom: 8),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                      
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.multiline ,
                            maxLines: 5,
                            minLines: 1,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText:"Type a message",
                              prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined)),
                              suffixIcon: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                  
                                  IconButton(onPressed: (){}, icon: Icon(Icons.attach_file)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt)),
                                ],
                              ),
                              contentPadding: EdgeInsets.all(5),
                            ),
                          )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8,right: 5,left:2),
                        child: CircleAvatar(
                          radius:25,
                          backgroundColor: Color(0xFF128C7E),
                          child: IconButton(icon:Icon(Icons.mic,color: Colors.white,) ,onPressed: (){},),
                          
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      
    );
    
  }
  



}