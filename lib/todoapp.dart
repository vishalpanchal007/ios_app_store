import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodayApp extends StatefulWidget {
  const TodayApp({Key? key}) : super(key: key);

  @override
  State<TodayApp> createState() => _TodayAppState();
}

class _TodayAppState extends State<TodayApp> {
  DateTime dateTime = DateTime.now();
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              color: Colors.black12,
              height: MediaQuery.of(context).size.height / 8.5,
              width: MediaQuery.of(context).size.width / 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat.MMMMEEEEd().format(DateTime.now()),
                    style: TextStyle(color: CupertinoColors.inactiveGray),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Today",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.w700),
                      ),
                      CircleAvatar(
                        radius: 20,
                        foregroundImage: AssetImage('assets/msd.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SingleChildScrollView(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width / 1,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/game1.png'),
                          fit: BoxFit.fill),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 20),
                          child: Text(
                            "SERIOUSLY?",
                            style: TextStyle(color: Colors.grey, fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Bizarre Sports Games',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height / 5),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          child: Text(
                            'Anthing can happen sports these\ngames prove it.Tap to play',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 1,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.blue,
                  image: DecorationImage(
                      image: AssetImage('assets/game2.png'),
                      fit: BoxFit.cover)),
            )
          ],
        ),
      ),
    );
  }
}
