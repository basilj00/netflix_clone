import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black,
      appBar: AppBar(
        
      backgroundColor: Colors.black,
      
        title: Image.asset(ImageConstants.LOGO,height: 38,),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(ImageConstants.PENCIL_ICON,height: 24,),
          )
        ],
      ),

      body: Center(
        
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: DummyDb.userList.length +1 ,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 22,
            mainAxisExtent: 121,
          ),
        itemBuilder: (context, index) => 
        Column(
          children: [
            Image.asset(
             DummyDb.userList[index]["imagePath"],
           height: 92,

           ),
          //  Text(
          //   DummyDb.userList[index]["name"],
          //   style: TextStyle(color: Colors.white),
          //  )
          ],

        )
      ),
    )
    );
  }
}