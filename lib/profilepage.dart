import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: MediaQueryHeight * 0.07,),
            Text("Profile", style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: "Poppins", fontWeight: FontWeight.bold),),
            SizedBox(height: 37,),
            Container(
              height: 671,
              width: 480,
              decoration: ShapeDecoration(
                color: Color(0xFFF3F9FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                )
              ),
              child: Container(
                padding: EdgeInsets.only(top: 23, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          width: 75,
                          height: 75,
                          decoration: ShapeDecoration(
                            image: DecorationImage(image: AssetImage("assets/profileOP.jpg"),
                            fit: BoxFit.fill),
                            shape: OvalBorder()
                          ),
                        ),
                        SizedBox(width: 20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                          Text("Aura Aulia", style: TextStyle(fontSize: 20, fontFamily: "Poppins", fontWeight: FontWeight.w400, color: Colors.black),),
                          SizedBox(height: 7,),
                          Text("aura@gmail.com", style: TextStyle(fontSize: 12, fontFamily: "Poppins", fontWeight: FontWeight.w300, color: Colors.black),),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 77,),
                    Row(
                      children: [
                        Icon(Icons.person, size: 28,),
                        SizedBox(width: 16,),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "profilesetting");
                          },
                          child: Text("Setting Profile", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Colors.black),))
                      ],
                    ),
                    SizedBox(height: 48,),
                    Row(
                      children: [
                        Icon(Icons.settings, size: 28,),
                        SizedBox(width: 25,),
                        Text("Setting App", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Colors.black),)
                      ],
                    ),
                    SizedBox(height: 48,),
                    Row(
                      children: [
                        Icon(Icons.info_outline_rounded, size: 28,),
                        SizedBox(width: 25,),
                        Text("About App", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Colors.black),)
                      ],
                    ),
                    SizedBox(height: 48,),
                    Row(
                      children: [
                        Icon(Icons.privacy_tip_outlined, size: 28,),
                        SizedBox(width: 25,),
                        Text("Privacy Police", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Colors.black),)
                      ],
                    ),
                    SizedBox(height: 150,),
                    Row(
                      children: [
                        Icon(Icons.logout, size: 28,),
                        SizedBox(width: 16,),
                        TextButton(child: Text("Log Out", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400, fontFamily: "Poppins", color: Colors.black),),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                                content: Text("Yakin Untuk Keluar?", textAlign: TextAlign.center, style: TextStyle(fontSize: 14,fontFamily: "Poppins", fontWeight: FontWeight.w500),),
                                actions: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("Tidak", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: "Poppins"),)
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Get.offAllNamed("/nikahyukk");
                                      },
                                      child: Text("Ya", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500, fontFamily: "Poppins"),)
                                    )
                                    ],
                                  )
                                ],
                              );
                            });
                        },)
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
