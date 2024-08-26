import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/image_constants.dart';
import 'package:netflix_clone/view/bottom_navbar_screen/bottom_navbar_screen.dart';
import 'package:netflix_clone/view/global_widget/user_name_card.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          ImageConstants.LOGO,
          height: 40,
        ),
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Center(
        child: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 75),
          itemCount: DummyDb.usersList.length + 1,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 22,
            mainAxisExtent: 121,
          ),
          itemBuilder: (context, index) => index < DummyDb.usersList.length
              ? UserNameCard(
                  image: DummyDb.usersList[index]["imagePath"],
                  onCardTapped: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavbar(),
                      ),
                    );
                  },
                )
              : GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: Duration(seconds: 1),
                        backgroundColor: Colors.red,
                        content: Text("Nothing found in this button!"),
                      ),
                    );
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Image.asset(ImageConstants.ADD),
                        Text(
                          "Add",
                          style: TextStyle(color: Colors.white, height: 4),
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
