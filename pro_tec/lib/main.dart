import 'package:flutter/material.dart';
import 'package:pro_tec/widgets/my_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: AssetImage("images/Vector.png"),
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width / 1.25,
                height: MediaQuery.of(context).size.height / 1.75,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Image(
                image: AssetImage("images/img.png"),
                fit: BoxFit.fill,
                width: MediaQuery.of(context).size.width / 1.5,
                height: MediaQuery.of(context).size.height / 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage:AssetImage("images/img2.jpg"),
                      ),
                      SizedBox(width: 10,),
                      Text("Hi, Samarth",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                    child: Text("Live Requests ",style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
                  ),

                  Expanded(
                    child: Container(
                      child: ListView(
                        children: [
                          MyCard(),
                          MyCard(),
                          MyCard(),
                          MyCard(),
                        ],
                      ),
                    ),
                  )


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


