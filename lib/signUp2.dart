import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_app/signUp.dart';

class signUp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width * 1,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/photos/bgd.jpg"),
                fit: BoxFit.cover
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 60,),
            SizedBox(height: 10),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40))
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              SvgPicture.asset("assets/photos/lazy2.svg",
                                  height: size.width * 0.6,
                                  width: size.width * 0.6,
                                  fit: BoxFit.scaleDown),

                              Text("Create Your account!", style: TextStyle(color: Colors.black,
                                  fontSize: 18, fontWeight: FontWeight.w600, fontFamily: 'poppins')
                              ),

                              SizedBox(height: 10,),
                              Container(
                                padding: EdgeInsets.all(10),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Enter your password",
                                      hintStyle: TextStyle(color: Color(0xffFB4566).withOpacity(0.5),
                                          fontSize: 17, fontWeight: FontWeight.w400),
                                      labelText: "Password",
                                      labelStyle: TextStyle(color: Color(0xffFB4566),
                                          fontWeight: FontWeight.w400, fontSize: 16, fontFamily: 'poppins'),
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(color: Color(0xffFB4566)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(20),
                                          borderSide: BorderSide(color: Color(0xffFB4566))
                                      ),
                                      prefixIcon: Icon(Icons.email,
                                          color: Color(0xffFB4566))
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),

                                child: TextFormField(
                                  decoration: InputDecoration(
                                      hintText: "Confirm Password",
                                      hintStyle: TextStyle(color: Color(0xffFB4566).withOpacity(0.5),
                                          fontSize: 17, fontWeight: FontWeight.w400),
                                      labelText: "Confirm Password",
                                      labelStyle: TextStyle(color: Color(0xffFB4566),
                                          fontWeight: FontWeight.w400, fontSize: 16, fontFamily: 'poppins'),
                                      floatingLabelBehavior: FloatingLabelBehavior.always,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(color: Color(0xffFB4566)),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: BorderSide(color: Color(0xffFB4566)
                                        ),
                                      ),
                                      prefixIcon: Icon(Icons.lock,
                                        color: Color(0xffFB4566),)
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 16,),

                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 10),

                          child: OutlinedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return signUp();
                            }));
                          },

                              style: OutlinedButton.styleFrom(side: BorderSide(width: 1, color: Color(0xffFB4566))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[

                                  SvgPicture.asset("assets/photos/back.svg",
                                      height: 26,
                                      width: 26,
                                      fit: BoxFit.scaleDown),

                                  SizedBox(width: 5),

                                  Text("Back", style: TextStyle(color:
                                  Color(0xffFB4566), fontWeight: FontWeight.w500,
                                      fontSize: 20, fontFamily: 'poppins'),),

                                ],
                              )),
                        ),

                        SizedBox(height: 20,),

                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.symmetric(horizontal: 10),

                          child: ElevatedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return signUp2();
                            }));
                          },

                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xffFB4566)
                            ),

                            child: Text("Create your account", style: TextStyle(color:
                            Colors.white, fontWeight: FontWeight.w500,
                                fontSize: 20, fontFamily: 'poppins'),),),
                        ),
                        SizedBox(width: 5),

                        SizedBox(height: 30,),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                  height: 1.5,
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Text("or",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontFamily: 'poppins',
                                      fontWeight: FontWeight.w500),
                                ),
                              ),

                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                  height: 1.5,
                                ),
                              ),

                            ],
                          ),
                        ),
                    SizedBox(height: 20,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SvgPicture.asset("assets/photos/google.svg",
                            height: 26,
                            width: 26,
                            fit: BoxFit.scaleDown),
                        SizedBox(width: 5),
                        Text("Sign up using Google", style: TextStyle(color: Color(0xffFB4566),
                            fontSize: 18, fontWeight: FontWeight.w500, fontFamily: 'poppins'))
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Already have an account?", style: TextStyle(color: Colors.black,
                            fontSize: 15, fontWeight: FontWeight.w500,fontFamily: 'poppins')),
                        SizedBox(width: 5),
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        },
                            child: Text("Log In", style: TextStyle(color: Color(0xffFB4566),
                                fontSize: 15, fontWeight: FontWeight.w500,
                                fontFamily: 'poppins'))),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}