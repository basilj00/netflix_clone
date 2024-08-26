import 'package:flutter/material.dart';
import 'package:netflix_clone/dummy_db.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/view/home_screen/widgets/NewArrivalCard.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.Mainblack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstants.Mainblack,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: ColorConstants.Mainred,
                child: Icon(
                  Icons.notifications,
                  color: ColorConstants.MainWhite,
                ),
              ),
            ),
            Text(
              "Notifications",
              style: TextStyle(
                color: ColorConstants.MainWhite,
              ),
            ),
          ],
        ),
        titleSpacing: 0,
      ),
      body: ComingSoonCard(),
    );
  }
}

class ComingSoonCard extends StatelessWidget {
  const ComingSoonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Column(
            children: List.generate(
              DummyDb.commingsoondata.length,
              (index) {
                final data = DummyDb.commingsoondata[index];
                return Container(
                  height: 65,
                  color: ColorConstants.DarkGrey,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                        child: Image.network(
                          data['image'],
                          height: 55,
                          width: 113,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(width: 18),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("New Arrival",
                            style: TextStyle(
                              color: ColorConstants.MainWhite, fontSize: 14,fontWeight: FontWeight.bold)),
                          Text(
                            data['title'],
                            style: TextStyle(color: ColorConstants.MainWhite, fontSize: 14),
                          ),
                         
                          Text(
                            data['date2'],
                            style: TextStyle(
                              color: ColorConstants.LightGrey,
                              fontSize: 11,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 20),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => newArrivalcard(),
            separatorBuilder: (context, index) => SizedBox(height: 17),
            itemCount: DummyDb.commingsoondata.length,
          ),
        ],
      ),
    );
  }
}
