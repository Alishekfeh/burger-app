import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:burger/home_page.dart';

//Visibility شرح التنقل بين ال العناويين

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.orange
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              height: MediaQuery
                  .of(context)
                  .size
                  .height,
              child: Image.asset(
                "images/burger1.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Text(
                        " Burger \n    ZOZ", style: GoogleFonts.coustard(
                          color: Colors.orange[200],
                          fontSize: 52,
                          fontWeight: FontWeight.bold
                      ),),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height / 2.9,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black.withOpacity(0.2),

                  ),
                  height: 180,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 90,),
                          Container(
                            width: 250,
                            height: 5,
                            color: Color(0xffFFc77900).withOpacity(0.8),
                          ),
                          SizedBox(height: 50,),
                          Container(
                            width: 250,
                            height: 5,
                            color: Color(0xffFFc77900).withOpacity(0.8),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 44),
                        child: Text(" Good Food \n Tasty Food",
                          style: GoogleFonts.raleway(
                              fontSize: 46,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 90, left: 260),
                        child: Text("*", style: GoogleFonts.raleway(
                            fontSize: 120,
                            color: Colors.white,
                            fontWeight: FontWeight.bold

                        ),),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => HomePage()));
                  },
                  child: Container(
                    margin: EdgeInsets.all(12),
                    height: 65,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.orange[700],
                    ),
                    child: Center(
                        child: Text("Sign Up", style: GoogleFonts.raleway(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,

                        ),)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Text('Already you have account?',
                        style: TextStyle(color: Colors.white),),
                      SizedBox(width: 22,),
                      Text(
                        'Sign In Here', style: TextStyle(color: Colors.white),)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
