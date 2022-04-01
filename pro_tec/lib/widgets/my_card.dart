import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 8,

        child: Container(
          height: MediaQuery.of(context).size.height/3.75,
          //width: MediaQuery.of(context).size.width/3,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage:AssetImage("images/img2.jpg"),
                    ),
                    SizedBox(width: 10,),
                    Text("Samarth Goel",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18,color: Color(0xFFB32525)),),

                  ],
                ),
              ),
              Column(
                children: [

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: Row(
                      children: [
                        Image(image: AssetImage("images/2.png")),
                        SizedBox(width: 10,),
                        Text("Railway Station, Praygraj",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xFFB32525)),),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: Row(
                      children: [
                        Image(image: AssetImage("images/3.png")),
                        SizedBox(width: 10,),
                        Text("Urgently need paracetamol",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xFFB32525)),),

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                    child: Row(
                      children: [
                        Image(image: AssetImage("images/1.png")),
                        SizedBox(width: 10,),
                        Text("2 tablets",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color(0xFFB32525)),),

                      ],
                    ),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}