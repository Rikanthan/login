import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  double screenHeight;


  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            lowerHalf(context),
            upperHalf(context),


          ],
        ),
      ),
    );
  }





  Widget upperHalf(BuildContext context) {
    return Container(
      height: screenHeight / 3,
      child: Image.asset(
        'images/pizza.jpg',
        fit: BoxFit.cover,
      ),
    );
  }

  Widget lowerHalf(BuildContext context) {
    return Container(

      alignment: Alignment.bottomCenter,
      child: Container(


          margin: EdgeInsets.only(top: screenHeight/2),

          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            elevation: 8,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: 'LOG',
                              style: TextStyle(
                                  color: Colors.grey, fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                              children: <TextSpan>[
                                TextSpan(text: 'IN',
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                    ),

                                )
                              ]
                          ),
                        ),
                      )
                ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person),
                    ),


                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock),
                       ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                     child: Column(
                       children: <Widget>[
                     Linkify(
                     onOpen: (link) => print("Clicked ${link.url}!"),
                          text: "Forgot Password",
                       style: TextStyle(
                         decoration: TextDecoration.underline,
                         decorationColor: Colors.black,
                       ),
                       textAlign: TextAlign.left,
                        ),

                      ],
                     ),
                  ),
                          SizedBox(
                            height: 10,
                          ),

                          Center(

                          child: Column(
                          children: <Widget>[
                         FlatButton(
                           child: Text("LOGIN"),
                           color: Colors.red,
                           textColor: Colors.white,
                           padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 125),

                           shape: RoundedRectangleBorder(

                               borderRadius: BorderRadius.circular(30)),
                           onPressed: () {},
                         )
                       ],
                     ),

                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(

                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            text: 'Don\'t have an account?',
                            style: TextStyle(
                              color: Colors.blueGrey, fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            children: <TextSpan>[
                              TextSpan(text: ' LET\'S SIGN UP',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),

                              )
                            ]
                        ),
                      ),
                    ],
                  )
                  ),


                    ],
                  )

              ),
            ),

        ),


    );
  }
}
