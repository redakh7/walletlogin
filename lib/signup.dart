import 'package:flutter/material.dart';

void main() => runApp(new MyApp ());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MyHomePage(),
    ); // MaterialApp
  }
}
class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build (BuildContext context){
    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children:<Widget> [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 130.0, 0.0, 0.0),
                  child: Text(
                    'Sign UP ',
                    style: TextStyle(
                        fontSize: 80.0,fontWeight: FontWeight.bold
                    ),

                  ) ,

                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 195.0, 0.0, 0.0),
                  child: Text(
                    'Manager',
                    style: TextStyle(
                        fontSize: 70.0,fontWeight: FontWeight.bold
                    ),

                  ) ,

                ) ,
                Container(
                  padding: EdgeInsets.fromLTRB(290, 195.0, 0.0, 0.0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,fontWeight: FontWeight.bold, color: Colors.green
                    ),

                  ) ,

                )
              ],

            ),
          ),
          Container(
              padding: EdgeInsets.only(top:65.0,left: 20.0,right: 20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        )
                    ),
                  ) ,
                  SizedBox(height: 30.0),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'PASSWORD   ',
                        labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.green)
                        )
                    ),
                    obscureText: true ,
                  ),
                  SizedBox(height: 5.0,),
                  Container(
                    alignment: Alignment(1.0,0.0),
                    padding: EdgeInsets.only(top:15.0,left: 20.0),
                    child: InkWell(
                      child: Text('Forgot Password ?',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0,),
                  Container(
                    height: 40.0,
                    child:Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.greenAccent,
                      color: Colors.green,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap:(){} ,
                        child: Center(
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat'
                            ),
                          ),
                        ),
                      ),
                    ),

                  ),
                  SizedBox(height: 20.0),
                  Container(
                    height: 40.0,
                    color: Colors.transparent,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0

                          ),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular (20.0)

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            // child: ImageIcon(AssetImage('assets/66436-play-google-icons-computer-email-gmail.png')),
                          ),
                          Center(
                            child: Text('Log in With Gmail',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )


                ],
              )),
          SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'New here ?',
                style: TextStyle(
                    fontFamily: 'Montserrat'
                ),
              ),
              SizedBox(width: 5.0),
              InkWell(
                onTap: (){},
                child: Text('Register',
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline
                  ),),
              )
            ],
          )

        ],
      ),
    );

  }
}