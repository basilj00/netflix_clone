import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';
import 'package:netflix_clone/utils/image_constants.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.Mainblack,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: ColorConstants.DarkGrey,
        title: Container(
          height: 52,
          width: double.infinity,
          color: ColorConstants.DarkGrey,
          child: Row(
            children: [
              Icon(Icons.search, color: ColorConstants.LightGrey),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  "Search for a show, movie, genre, e.t.c.",
                  style: TextStyle(fontSize: 15, color: ColorConstants.LightGrey),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Icon(Icons.mic, color: ColorConstants.LightGrey),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              "Top Searches",
              style: TextStyle(
                fontSize: 30,
                color: ColorConstants.MainWhite,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Column(
              children: List.generate(
                20,
                (index) => Padding(
                  padding: const EdgeInsets.only(bottom: 3.0),
                  child: Container(
                    color: ColorConstants.DarkGrey,
                    height: 80,
                    child: Row(
                      children: [
                        Image.asset(
                          ImageConstants.NOTIFICATION_img,
                          width: 160,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 18),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Citation",
                                style: TextStyle(
                                  color: ColorConstants.MainWhite,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                       
                       Image.asset(ImageConstants.PLAY_BUTTON),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
