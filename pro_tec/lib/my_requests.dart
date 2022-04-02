import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'widgets/my_card.dart';

class MyRequests extends StatefulWidget {
  const MyRequests({Key? key}) : super(key: key);

  @override
  _MyRequestsState createState() => _MyRequestsState();
}

class _MyRequestsState extends State<MyRequests> {
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
                        backgroundImage: AssetImage("images/img2.jpg"),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "My Requests",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 30),
                    child:Center(
                      child: ToggleSwitch(
                        minWidth: MediaQuery.of(context).size.width/3.25,
                        minHeight: MediaQuery.of(context).size.height/17,
                        cornerRadius: 20.0,
                        activeBgColor:[ Colors.white],
                        activeFgColor: Color(0xFFB32525),
                        inactiveBgColor: Color(0xFFB52626),
                        inactiveFgColor: Colors.grey,
                        initialLabelIndex: 1,
                        totalSwitches: 2,

                        labels: ['Live Requests', 'Past Requests'],
                        radiusStyle: true,
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),


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
