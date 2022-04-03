import 'package:flutter/material.dart';

class FundRequest extends StatefulWidget {
  const FundRequest({Key? key}) : super(key: key);

  @override
  State<FundRequest> createState() => _FundRequestState();
}

class _FundRequestState extends State<FundRequest> {
  int collected=347368,tocollect=500000,amount=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Column(
children: [
  Padding(
    padding: const EdgeInsets.only(top: 20),
    child: Row(
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
          style: ButtonStyle(
            shape: MaterialStateProperty.all(CircleBorder()),
            backgroundColor: MaterialStateProperty.all(
                Color(0xFFFF5E5E)), // <-- Button color
          ),
        ),
        Text(
          "Fund Request",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 8.0,top: 10),
    child: Align(
        alignment: Alignment.topLeft,
        child: Text("Help me fight  lung Cancer!!",style: TextStyle(color: Color(0xFFA51C1C),fontSize: 20),)),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset("images/user.png"),
        Column(
          children: [
            Text("Request was started by Samarth Goel",style: TextStyle(color: Colors.red,fontSize: 18),),
            Text("Date : 13/07/22 ",style: TextStyle(fontSize: 15),)
          ],
        )
      ],
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(left: 8.0),
    child: Align(
        alignment: Alignment.topLeft,
        child: Text("About",style: TextStyle(fontSize: 25,color:Color(0xFFA51C1C) ),)),
  ),

  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text("My son has been fighting for his life since he was a 5-year-old. Now years later, he is still fighting. However, the cancer seems to take more and more control of his body.I can’t help but think, will God spare my child this time or will cancer actually take him away from me?"),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    children: [
      Text("To see documents tap"),
      TextButton(onPressed: (){}, child: Text("Here",style: TextStyle(color: Color(0xFFA51C1C)),)),

    ],

),
  ),
  Text("Amount Collected",style: TextStyle(color: Color(0xFFA51C1C),fontSize: 20),),
  Text("₹ $collected",style: TextStyle(fontSize :20),),
  Text("Amount to beCollected",style: TextStyle(color: Color(0xFFA51C1C),fontSize: 20),),

  Text("₹ $tocollect",style: TextStyle(fontSize: 20),),
  Text("Amount you want to donate"),
  Padding(
    padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xFFFF6A6A)),
      child: TextFormField(
        onChanged: (value) {
           amount = value as int;
        },
        initialValue: "  Enter Amount in ₹",
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.only(top: 25.0),
    child: ElevatedButton(
      onPressed: () {


      },
      child: SizedBox(
          width: MediaQuery.of(context).size.width / 1.5,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Center(
                child: Text(
                  "Contribute Now",
                  style: TextStyle(fontSize: 20),
                )),
          )),
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            )),
        backgroundColor: MaterialStateProperty.all(Color(0xFFFB4B4B)),
      ),
    ),
  ),

],
      ),
    ));
  }
}
