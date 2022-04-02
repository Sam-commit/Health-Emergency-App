import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  List<dynamic>data=["Samarth", "Sarthak", "Ritwik Rajput", "Lalit"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage("images/img2.jpg"),),
              SizedBox(width: 10,),
              Text("Chat Room",style: TextStyle(color: Colors.black),)
            ],
          ),
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0),
        ),
        body: ListView.builder(
          itemCount: data.length,
            itemBuilder: (BuildContext context,int index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFE8383),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage("images/img2.jpg"),),
                  title: Text(data[index]),
                ),
              ),
            ),
          );
        })),

    );
  }
}
