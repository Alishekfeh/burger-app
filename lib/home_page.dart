import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:burger/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int taps = 0;
  List dataBurger = [
    {
      "name": "Grilled beef burger",
      "image":
          "https://www.qualityassurancemag.com/fileuploads/publications/29/issues/103585/articles/images/Impossible_Burger_fmt.png",
      "rating": "5.0",
      "price": 13.0,
      "distance": "4.3 km",
    },
    {
      "name": "Smoked beef burger",
      "image":
          "https://nos.jkt-1.neo.id/mcdonalds/foods/August2020/qvZ45vLQcjPwUXror9aQ.png",
      "rating": "4.2",
      "price": "30.0",
      "distance": "3.3 km",
    },
    {
      "name": "Beef burger #3",
      "image":
          "http://cdn.shopify.com/s/files/1/0539/7869/3829/products/bigfootbeef.png?v=1629913723",
      "rating": "4.7",
      "price": "7.0",
      "distance": "8.3 km",
    },
    {
      "name": "Beef burger #4",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Burger_King_-_Angus_XT_Burger.tiff/lossless-page1-800px-Burger_King_-_Angus_XT_Burger.tiff.png",
      "rating": "3.6",
      "price": "3.0",
      "distance": "1.3 km",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black12,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(1, 3),
                                color: Colors.white.withOpacity(0.2),
                                blurRadius: 10),
                          ]),
                      child: Stack(
                        children: [
                          Image.network(
                            "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Burger_King_-_Angus_XT_Burger.tiff/lossless-page1-800px-Burger_King_-_Angus_XT_Burger.tiff.png",fit: BoxFit.cover,height: 90,width: 80,
                          ),

                          Center(
                            child: Icon(
                              Icons.menu,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 80,
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 3),
                            color: Colors.red.withOpacity(0.2),
                            blurRadius: 20),
                      ]),
                      child: Image.network(
                          "https://pbs.twimg.com/media/EJgg_pTXkAAF4WV.png"                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Find and Order",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w400, fontSize: 30),
                        ),
                        Text(
                          "Burger For Yuo",
                          style: GoogleFonts.raleway(
                              fontWeight: FontWeight.w600, fontSize: 30),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    prefix: Padding(
                      padding: const EdgeInsets.only(top: 30, left: 6),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 22,
                      ),
                    ),
                    hintText: "   Find a Burger ",
                    hintStyle: TextStyle(
                        fontSize: 24, height: 1.6, fontWeight: FontWeight.w600),
                    filled: true,
                    fillColor: Colors.grey.shade600,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    enabledBorder:
                        OutlineInputBorder(borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 75,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            taps = 0;
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: taps == 0
                                    ? Colors.black12
                                    : Colors.transparent,
                              ),
                              borderRadius: BorderRadius.circular(50),
                              color: taps == 0
                                  ? Colors.red.withOpacity(0.1)
                                  : Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  transform:
                                      Matrix4.translationValues(-3.0, 1.0, 0.0),
                                  child: Text(
                                    '🥩',
                                    style: TextStyle(fontSize: 40),
                                  )),
                              Text(
                                'Beef',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            taps = 1;
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: taps == 1
                                      ? Colors.black12
                                      : Colors.transparent),
                              borderRadius: BorderRadius.circular(50),
                              color: taps == 1
                                  ? Colors.red.withOpacity(0.1)
                                  : Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  transform:
                                      Matrix4.translationValues(-3.0, 1.0, 0.0),
                                  child: Text(
                                    '🍗',
                                    style: TextStyle(fontSize: 40),
                                  )),
                              Text(
                                'Chicken',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            taps = 2;
                          });
                        },
                        child: Container(
                          height: 45,
                          width: 130,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: taps == 2
                                      ? Colors.black12
                                      : Colors.transparent),
                              borderRadius: BorderRadius.circular(50),
                              color: taps == 2
                                  ? Colors.red.withOpacity(0.1)
                                  : Colors.transparent),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  transform:
                                      Matrix4.translationValues(-3.0, 1.0, 0.0),
                                  child: Text(
                                    '🧀',
                                    style: TextStyle(fontSize: 40),
                                  )),
                              Text(
                                'Cheese',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Most Popular',
                    style: GoogleFonts.raleway(
                        fontWeight: FontWeight.w600, fontSize: 22),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Visibility(
                visible: taps == 0 ? true : false,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 270,
                    child: GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 3),
                        ),
                        itemCount: dataBurger.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                               Navigator.push(context, MaterialPageRoute(builder: (_) => DetailPage(dataBurger[index])));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                margin: EdgeInsets.only(right: 10),
                                decoration: BoxDecoration(
                                    color: Colors.black26,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: Offset(0, 5),
                                          color: Colors.grey.withOpacity(0.2),
                                          blurRadius: 7)
                                    ],
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 35,
                                    ),
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 100,
                                        child: Image.network(
                                          "${dataBurger[index]['image']}",
                                        )),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "${dataBurger[index]['name']}",
                                      style: GoogleFonts.raleway(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                          size: 20,
                                        ),
                                        Text(
                                          " ${dataBurger[index]['rating']} | ",
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text("${dataBurger[index]['distance']}",
                                            style: TextStyle(
                                                color: Colors.grey.shade700,
                                                fontWeight: FontWeight.w500))
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "\$",
                                            style:
                                                TextStyle(color: Colors.orange),
                                          ),
                                          Text(
                                            "${dataBurger[index]['price']}",
                                            style: GoogleFonts.manrope(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 28),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
              ),
              Visibility(
                visible: taps == 1 ? true : false,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.black26,
                  child: Center(
                    child: Text(
                      "Sold Out",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
              Visibility(
                visible: taps == 2 ? true : false,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  color: Colors.black26,
                  child: Center(
                    child: Text(
                      "Sold Out",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
