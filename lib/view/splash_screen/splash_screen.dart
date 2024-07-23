import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/home_screen/home_screen.dart';
import 'package:netflix_clone/view/username_screen/username_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

 @override
  void initState() {
    Future.delayed(Duration(seconds: 1)).then(
      (value){
    Navigator.pushReplacement(context,
    MaterialPageRoute(builder: (context) => UserName(),
    )
        );
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      
      body: Center(
         child: Image.asset(ImageConstants.LOGO),
        






        // Text("NETFLIX",style: TextStyle(
        //   color: Colors.red,fontSize: 80,fontWeight: FontWeight.bold
        // ),),
      ),
    );
  }
}