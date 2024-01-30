import 'package:flutter/material.dart';
import 'package:get/get.dart';

class landingpage extends StatefulWidget {
  const landingpage({super.key});
  @override
  State<landingpage> createState() => _landingpageState();
}

class _landingpageState extends State<landingpage> {
  @override
  Widget build(BuildContext context) {
  final MediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQueryHeight * 10,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/foto.png"),
            fit: BoxFit.cover)
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
                SizedBox(height:395),
                InkWell(
                  onTap: () {
                    Get.toNamed("/loginpage");
                  },
                  child: Container(
                    width: 280,
                    height: 55,
                    decoration: ShapeDecoration(
                      color: Color(0xFF814A26),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
                    ),
                    child: Center(
                      child: Text(
                        "Login", style: TextStyle(color: Colors.white, fontSize: 16, fontFamily: "Poppins", fontWeight: FontWeight.w500, height: 0),
                      ),
                    ),
                  ),
                ),
               SizedBox(height: 3,),
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't Have Account?", style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                      SizedBox(width: 8),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "registerpage");
                        },
                        child: Text("Create Account", style: TextStyle(color: Color(0xFFDBDBDB), fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w600),)),
                    ],
                  ),
                  SizedBox(height: 1),
                  Text("Or", style: TextStyle(color: Colors.white, fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w600),),
                ],
               ),
               SizedBox(height: 16,),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 127,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/google.png"),
                            fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(
                          width: 60,
                          height: 23,
                          child: Text("Google", style: TextStyle(color: Color(0xFF2D2D2D), fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w500),))
                      ],
                    ),
                  ),
                  SizedBox(width: 14,),
                  Container(
                    width: 127,
                    height: 49,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: 35,
                          height: 33,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/facebook.png"),
                            fit: BoxFit.fill),
                          ),
                        ),
                        SizedBox(width: 8,),
                        SizedBox(
                          width: 80,
                          height: 23,
                          child: Text("Facebook", style: TextStyle(color: Color(0xFF2D2D2D), fontSize: 15, fontFamily: "Poppins", fontWeight: FontWeight.w500),))
                      ],
                    ),
                  )
                ],
               ) 
            ],
          ),
        ),
      ),
    );
  }
}