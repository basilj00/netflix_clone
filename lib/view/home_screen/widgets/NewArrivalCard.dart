import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class newArrivalcard extends StatelessWidget {
  const newArrivalcard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
            height: 195,
            decoration:BoxDecoration(
              image: DecorationImage(image: NetworkImage(DummyDb.commingsoondata[index]["image"]),fit: BoxFit.cover)
            ),
                    ),
          ),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                children: [
                  Icon(Icons.notifications,size: 24,color: ColorConstants.MainWhite,),
                  Text("Remind Me",style: TextStyle( color: ColorConstants.MainWhite,fontSize: 11,fontWeight: FontWeight.w400),)
                ],
              ),
              SizedBox(width: 45,),
               Column(
                children: [
                  Icon(Icons.share,size: 24,color: ColorConstants.MainWhite,),
                  Text("Share",style: TextStyle( color: ColorConstants.MainWhite,fontSize: 11,fontWeight: FontWeight.w400),)
                ],
              )
            ],
          ),
        ),
        SizedBox(height: 15,),


        
        Container(
          child: Padding(
            padding: const EdgeInsets.all(12.8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(DummyDb.commingsoondata[index]["date"],style:TextStyle(fontSize: 11,color: ColorConstants.MainWhite),),
               SizedBox(height: 13,),
                    Text(
                     DummyDb.commingsoondata[index]["title"],
            style:TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: ColorConstants.MainWhite),
              ),
               SizedBox(height: 13,),
                Text(
                     DummyDb.commingsoondata[index]["text"],maxLines: 3,
            style:TextStyle(
              fontSize: 11,
              color: ColorConstants.MainWhite),
              ),
               SizedBox(height: 13,),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(DummyDb.commingsoondata[index]["spcl1"],style:TextStyle(
                             fontSize: 11,
                             fontWeight: FontWeight.bold,
                             color: ColorConstants.MainWhite),),
                             Text(DummyDb.commingsoondata[index]["spcl2"],style:TextStyle(
                             fontSize: 11,
                             fontWeight: FontWeight.bold,
                             color: ColorConstants.MainWhite),),
                             Text(DummyDb.commingsoondata[index]["spcl3"],style:TextStyle(
                             fontSize: 11,
                             fontWeight: FontWeight.bold,
                             color: ColorConstants.MainWhite),),
                             Text(DummyDb.commingsoondata[index]["spcl4"],style:TextStyle(
                             fontSize: 11,
                             fontWeight: FontWeight.bold,
                             color: ColorConstants.MainWhite),),
                             Text(DummyDb.commingsoondata[index]["spcl5"],style:TextStyle(
                             fontSize: 11,
                             fontWeight: FontWeight.bold,
                             color: ColorConstants.MainWhite),),
                             Text(DummyDb.commingsoondata[index]["spcl6"],style:TextStyle(
                             fontSize: 11,
                             fontWeight: FontWeight.bold,
                             color: ColorConstants.MainWhite),),
                            
                  ],
                 ),
               )
                
                
              ],
            ),
          ),
        )
        ],
      ),),
    );
  }
}