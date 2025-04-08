import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mobile_application_development/model/chatmodel.dart';
import 'package:mobile_application_development/screens/individual_page.dart';

class CustomUi extends StatelessWidget {
    final Chatmodel chatmodel;
    const CustomUi({super.key, required this.chatmodel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>IndividualPage(chatmodel: chatmodel,)));
      },
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              child: SvgPicture.asset(chatmodel.isGroup ? "assets/group.svg" : "assets/person.svg",
              color: Colors.white,
              height: 30,
              width: 30,),
              backgroundColor: Colors.blueGrey,
            ),
            title: Text(chatmodel.name,
            style: TextStyle(fontWeight: FontWeight.bold,
            fontSize: 16),),
            subtitle: Row(
              children: [
                Icon(Icons.done_all),
                SizedBox(width: 5,),
                Text(chatmodel.currentMessage
                ,style: TextStyle(fontSize: 13),),
          
              ],
            ),
            trailing: Text(chatmodel.time),
          ),
          Padding(
            padding: const EdgeInsets.only(right:20,left:80),
            child: Divider(
              thickness: 1,
            ),
          )
        ],
      ),
    );
  }
}