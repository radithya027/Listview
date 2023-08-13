import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'fade_animation.dart';
import 'SignupPage.dart';




void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    )
  );
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(1, Text("Halo", style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),)),
                  SizedBox(height: 20,),
                  FadeAnimation(1.2, Text("Selamat Datang di MovieXx", 
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[700],  
                    fontSize: 15
                  ),)),
                ],
              ),
              FadeAnimation(1.4, Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('https://o.remove.bg/downloads/891b2ded-88a3-4a05-ad7e-42cd41d25690/SpongeBob_Mr__Krabs_Lies_in_Money_Sticker-removebg-preview.png')
                  )
                ),
              )),
              Column(
                children: <Widget>[
                  FadeAnimation(1.5, MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black
                      ),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Text("Login", style: TextStyle(
                      fontWeight: FontWeight.w600, 
                      fontSize: 18
                    ),),
                  )),
                  SizedBox(height: 20,),
                  FadeAnimation(1.6, Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border(
                        bottom: BorderSide(color: Colors.black),
                        top: BorderSide(color: Colors.black),
                        left: BorderSide(color: Colors.black),
                        right: BorderSide(color: Colors.black),
                      )
                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        //Navigator.push(context, MaterialPageRoute(builder: (context) =>()));
                      },
                      color: Colors.yellow,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: Text("Sign up", style: TextStyle(
                        fontWeight: FontWeight.w600, 
                        fontSize: 18
                      ),),
                    ),
                  ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
