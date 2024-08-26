import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/global_widget/user_name_card.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.Mainblack,
      body: SafeArea(
        child: Column(
          children: [
            _buildUserSelectionSection(),
            SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.edit,
                  color: ColorConstants.LightGrey,
                  size: 14,
                ),
                SizedBox(width: 9),
                Text(
                  "Manage Profiles",
                  style: TextStyle(color: ColorConstants.LightGrey, fontSize: 14),
                ),
              ],
            ),
                  SizedBox(height: 11),

          Container(
            color: ColorConstants.DarkGrey,
            height: 247,
            child: Padding(
              padding: const EdgeInsets.only(left: 16,top: 19,right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.message_outlined,size: 20,color: ColorConstants.MainWhite,),
                      SizedBox(width: 9,),
                      Text("Tell friends about Netflix.",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.MainWhite,
                  ),)
                    ],
                  ),
                  Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit quam dui, vivamus bibendum ut.    A morbi mi tortor ut felis non accumsan accumsan quis. Massa,",
                  style: TextStyle(
                    color: ColorConstants.MainWhite,
                    fontSize: 11,
                  ),
                  ),
                  SizedBox(height: 11),
                  Row(
                    children: [
                      Text("Terms & Conditions",
                       style: TextStyle(
                        color: ColorConstants.LightGrey,
                        fontSize: 11,
                        decoration: TextDecoration.underline,decorationColor: ColorConstants.LightGrey,
                       ),
                      ),
                    ],
                  ),
                  SizedBox(height: 11),

                      Row(
                        children: [
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: ColorConstants.Mainblack,
                                filled: true,
                              ),
                            ),
                          ),
                         SizedBox(width: 9),

                          Container(
                            alignment: Alignment.center,
                            height: 37,
                            width: 96,
                            color: ColorConstants.MainWhite,
                            child: Text("Copy Link",
                             style: TextStyle(
                                color: ColorConstants.Mainblack,
                                fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                   ),
                                   ),
                          ),

                        ],
                      ),
                      SizedBox(height: 25),
                  Row(
  crossAxisAlignment: CrossAxisAlignment.center, 
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    Image.asset(ImageConstants.whatsapp),
     Divider(
            thickness: 1,
            height: 20, 
      color: ColorConstants.MainGrey,
    ),
    Image.asset(ImageConstants.facebook),
     Divider(
            thickness: 1,
            height: 20,
      color: ColorConstants.MainGrey,
    ),
    Container(
      decoration: BoxDecoration(
        color: ColorConstants.MainWhite,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.asset(ImageConstants.Gmail),
    ),
     Divider(
            thickness: 1,
            height: 20,
      color: ColorConstants.MainGrey,
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center, 
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: ColorConstants.MainWhite,
            size: 20,
          ),
        ),
        Text(
          "More",
          style: TextStyle(
            color: ColorConstants.MainWhite,
            fontSize: 10,
          ),
        ),
      ],
    ),
  ],
)
                                   
                ],
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 27,top: 10,bottom: 5),
            child: Row(
              children: [
                Icon(Icons.check_rounded,color: ColorConstants.MainWhite,size: 30,),
                SizedBox(width: 10),
                Text("My List",style: TextStyle(color: ColorConstants.MainWhite,fontSize: 20),)
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: ColorConstants.DarkGrey,
          ),

          Padding(
            padding: const EdgeInsets.only(left:26 ,top: 26),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Text("App Settings",style: TextStyle(color: ColorConstants.MainWhite,fontSize: 20),),
                    SizedBox(height: 10),
                    Text("Account",style: TextStyle(color: ColorConstants.MainWhite,fontSize: 20),),
                    SizedBox(height: 10),
                    Text("Help",style: TextStyle(color: ColorConstants.MainWhite,fontSize: 20),),
                    SizedBox(height: 10),
                    Text("Sign Out",style: TextStyle(color: ColorConstants.MainWhite,fontSize: 20),),
                  ],
                ),
              ],
            ),
          ),
          



          ],
        ),
      ),
    );
  }







  Widget _buildUserSelectionSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              DummyDb.usersList.length + 1,
              (index) => index < DummyDb.usersList.length
                  ? Padding(
                      padding: const EdgeInsets.only(right: 9),
                      child: UserNameCard(
                        height: index == 0 ? 68 : 60,
                        width: index == 0 ? 73 : 65,
                        image: DummyDb.usersList[index]["imagePath"],
                        onCardTapped: () {},
                      ),
                    )
                  : Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorConstants.MainWhite),
                          ),
                          height: 60,
                          width: 65,
                          child: Icon(
                            Icons.add,
                            color: ColorConstants.MainWhite,
                          ),
                        ),
                        Text(
                          "Add",
                          style: TextStyle(color: ColorConstants.MainWhite, height: 2),
                        ),
                      ],
                    ),
            ),
          ),
        ),
      ),
    );
  }
}


