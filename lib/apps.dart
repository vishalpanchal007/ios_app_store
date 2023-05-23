import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppApp extends StatefulWidget {
  const AppApp({Key? key}) : super(key: key);

  @override
  State<AppApp> createState() => _AppAppState();
}

class _AppAppState extends State<AppApp> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 8.5,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.grey))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Apps",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                  CircleAvatar(
                    radius: 30,
                    foregroundImage: AssetImage('assets/msd.png'),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.5),
              child: Text(
                'NOW WITH SIRI',
                style:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Text(
                'Triplit:Travel Planner',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 15.5),
              child: Text(
                'Quickly get flight info with siri',
                style: TextStyle(
                  fontSize: 20,
                  color: CupertinoColors.inactiveGray,
                ),
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1.11,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/travel.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1.11,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/gun.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            Divider(endIndent: 20, indent: 20),
            Container(
              margin: EdgeInsets.only(left: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "12 Great Apps for iOS 12",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 25),
                    child: Text(
                      'See All',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 14),
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/sky.jpg'), fit: BoxFit.cover),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 70),
                        child: Text("Sky Guide"),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "View Stars Night or Day",
                          style: TextStyle(
                              fontSize: 15,
                              color: CupertinoColors.inactiveGray),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 44),
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                      color: Color(0xfff0f0f8),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "OPEN",
                      style: TextStyle(
                          color: Color(0xff3476c3),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
            Divider(
              endIndent: 20,
              indent: 85,
              color: Colors.blue,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  height: MediaQuery.of(context).size.height / 10,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage('assets/over.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 75),
                        child: Text("OverCast"),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.only(left: 5),
                        child: Text(
                          "View Stars Night or Day",
                          style: TextStyle(
                              fontSize: 15,
                              color: CupertinoColors.inactiveGray),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 44),
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 5,
                  decoration: BoxDecoration(
                      color: Color(0xfff0f0f8),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "GET",
                      style: TextStyle(
                          color: Color(0xff3476c3),
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
