import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item.dart';

class GamesApp extends StatefulWidget {
  const GamesApp({Key? key}) : super(key: key);

  @override
  State<GamesApp> createState() => _GamesAppState();
}

class _GamesAppState extends State<GamesApp> {
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
                    "Games",
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
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'NEW GAME',
                style:
                TextStyle(color: Colors.blue, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Warhammer AoS:Realm War',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(
                'Compete in thrilling battles',
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
                          image: AssetImage('assets/game1.jpg'),
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
                          image: AssetImage('assets/game2.jpg'),
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
                    "Discover AR Gaming",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
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
            Column(
              children: model.map((e) {
                return Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: AssetImage(e.image),
                                  ),
                                ),
                                height:
                                MediaQuery.of(context).size.height * 0.1,
                                width: MediaQuery.of(context).size.width * 0.2,
                                alignment: Alignment.centerLeft,
                                margin: EdgeInsets.only(left: 15, top: 15),
                              ),
                              Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 1),
                                    child: Text(
                                      e.title,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      e.decscription,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: CupertinoColors.inactiveGray),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: Color(0xfff0f0f8),
                                          borderRadius:
                                          BorderRadius.circular(20),
                                        ),
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.038,
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.2,
                                        margin: EdgeInsets.only(left: 10),
                                        child: Center(
                                          child: Text(
                                            e.get,
                                            style:
                                            TextStyle(color: Colors.blue),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height:
                                        MediaQuery.of(context).size.height *
                                            0.035,
                                        width:
                                        MediaQuery.of(context).size.width *
                                            0.18,
                                        margin: EdgeInsets.only(left: 10),
                                        child: Text(
                                          e.info,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color:
                                              CupertinoColors.inactiveGray),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
