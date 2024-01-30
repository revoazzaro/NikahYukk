import 'dart:ui';

import 'package:flutter/material.dart';

class loginpage extends StatefulWidget {
  const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  bool passwordVisible = true;
  bool rememberMe = false;
  double containerWidth = 450;
  bool isContainerExpanded = false;

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/foto.png"),
            fit: BoxFit.cover)
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8.0, sigmaY: 8.0
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: MediaQueryHeight * 0.1,),
                Text("Menuju Yang Halal", style: TextStyle(
                color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400, fontFamily: 'Bonheur Royale', height: 0),),
                Text("Ayo Menikah", style: TextStyle(
                  color: Colors.white, fontSize: 40, fontWeight: FontWeight.w400, fontFamily: 'Bonheur Royale', height: 0),),
                Text("Aplikasi jasa pembuatan undangan pernikahan", style: TextStyle(
                  color: Colors.white, fontSize: 12, fontWeight: FontWeight.w200, fontFamily: 'Poppins'),
                ),
                SizedBox(height: 168,),
                AnimatedContainer(
                  duration: Duration(seconds: 2),
                  width: containerWidth,
                  height: isContainerExpanded ? 550 : 500,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                  ),
                  child: Container(
                    padding: EdgeInsets.only(left: 47, top: 34, right: 42),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Email", style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                        SizedBox(height: 8,),
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined, color: Colors.black),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(color: Colors.black)
                            ),
                            hintText: "aura@gmail.com",
                          ),
                        ),
                        SizedBox(height: 16),
                        Text("Password", style: TextStyle(color: Colors.black, fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                        TextField(
                          obscureText: passwordVisible,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.key_outlined, color: Colors.black54),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(13)),
                            suffixIcon: IconButton(icon: Icon(passwordVisible ?Icons.visibility_off_rounded : Icons.visibility_rounded,
                            color: Colors.black ),
                            onPressed: () {
                              setState(() {
                                passwordVisible = !passwordVisible;
                              });
                            }),
                          ),
                        ),
                        SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Checkbox(value: rememberMe, onChanged: (bool? newValue) {
                              setState( () {
                                rememberMe = newValue ?? false;
                              });
                            }
                          ),
                           Text("Remember me", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w700),),
                           SizedBox(width: 46),
                           Text("Forgot password", style: TextStyle(color: Colors.black, fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w700),),
                          ],
                        ),
                        SizedBox(height: 50),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, "Navbar");
                          },
                          child: Container(
                            width: 380,
                            height: 49,
                            decoration: ShapeDecoration(
                              color: Color(0xFF814A26),
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
                            ),
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white, fontSize: 14, fontFamily: "Poppins", fontWeight: FontWeight.w600),)),
                          ),
                        ),
                        SizedBox(height: 9),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("Dont Have Account", style: TextStyle(color: Colors.black, fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                            SizedBox(width: 8),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "registerpage");
                              },
                              child: Text("Create Account", style: TextStyle(color: Color(0xFF333333), fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w600),))
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


