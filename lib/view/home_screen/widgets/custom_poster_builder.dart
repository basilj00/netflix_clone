
import 'package:flutter/material.dart';
import 'package:netflix_clone/utils/color_constants.dart';

class CustomPosterBuilder extends StatelessWidget {
  const CustomPosterBuilder({
    this.isInfoVisible = false,
    this.isCircle = false,
    super.key,
    this.height = 177,
    this.width = 103,
    required this.title,
    this.imagesList = const [],
  });
  final bool isCircle;
  final double height;
  final double width;
  final String title;
  final bool isInfoVisible;
  final List<String> imagesList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.92,
                fontWeight: FontWeight.bold,
                color: ColorConstants.MainWhite,
              ),
            ),
          ),
          SizedBox(height: 24),
          SizedBox(
            height: isCircle ? width : height,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 12),
              itemCount: imagesList.length,
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imagesList[index])),
                  shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
                  color: Colors.red,
                ),
                height: height,
                width: width,
                child: Visibility(
                  visible: isInfoVisible,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        height: 3,
                        width: double.infinity,
                        color: ColorConstants.MainGrey,
                        alignment: Alignment.centerLeft,
                        child: Container(
                          height: 3,
                          color: ColorConstants.Mainred,
                          width: 35,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        color: ColorConstants.Mainblack,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(
                              Icons.info_outline,
                              size: 24,
                              color: ColorConstants.MainWhite,
                            ),
                            Icon(
                              Icons.more_vert,
                              size: 24,
                              color: ColorConstants.MainWhite,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              separatorBuilder: (context, index) => SizedBox(
                width: 7,
              ),
            ),
          )
        ],
      ),
    );
  }
}
