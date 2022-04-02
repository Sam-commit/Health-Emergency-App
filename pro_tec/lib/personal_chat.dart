import 'package:flutter/material.dart';

class PersonalChat extends StatefulWidget {
  const PersonalChat({Key? key}) : super(key: key);

  @override
  _PersonalChatState createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFDD3E3E),
          title: Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage("images/img2.jpg"),),
              SizedBox(width: 10,),
              Text("Samarth",style: TextStyle(color: Colors.black),)
            ],
          ),
        ),
        body: Column(

          children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 8,right: 8,top: 16,bottom: 8),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(15)
                ),


              ),
            )),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  decoration: InputDecoration(
                    hintText: "Type text here ...",
                    filled: true,
                    fillColor: Color(0xFFDD3E3E),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                suffixIcon: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: (){}
                ),
              )
              ),
            ),
          ],


        ),
      ),
    );
  }
}
