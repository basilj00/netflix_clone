import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.Mainblack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstants.Mainblack,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 20),
            Text(
              "Smart Downloads",
              style: TextStyle(
                fontSize: 15,
                color: ColorConstants.MainWhite,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text(
              "Introducing Downloads For You",
              style: TextStyle(
                color: ColorConstants.MainWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10), 
            Text(
             "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut. A morbi mi tortor ut felis non accumsan accumsan quis. Massa, id ut ipsum aliquam  enim non posuere pulvinar diam.",
              style: TextStyle(
                color: ColorConstants.MainWhite,
                fontSize: 10,
              ),
            ),
            SizedBox(height: 30), 
            Center(
              child: CircleAvatar(
                backgroundColor: ColorConstants.DarkGrey,
                radius: 88 ,
                child: Image.network("https://i.pinimg.com/564x/15/7c/3a/157c3aa9b3752d1dd408f693ca3b9909.jpg",
                fit: BoxFit.fill,
                ),
                
              ),
            ),
            
              SizedBox(height: 30), 

              Container(
                color: Colors.blue,
                height: 40,
               child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "SETUP",
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorConstants.MainWhite,
                    ),
                  )
                ],
               ),
              ),



       SizedBox(height: 50), 

              Center(
                child: Container(
                  
                  color: ColorConstants.DarkGrey,
                  height: 33,
                  width: 239,
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Find Something to Download",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorConstants.MainWhite,
                      ),
                    )
                  ],
                 ),
                ),
              )

          ],
        ),
      ),
    );
  }
}
