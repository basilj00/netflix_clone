import 'package:flutter/material.dart';

class UserNameCard extends StatelessWidget {
  const UserNameCard({
    super.key,
    required this.image,
    required this.onCardTapped,
    this.height,
    this.width
  });

  final image;
  final void Function()? onCardTapped;
  final double?height;
  final double?width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onCardTapped,
      child: Column(
        children: [
          Image.asset(
            image,
            height: height,
            width: width,
          ),
        ],
      ),
      
    );
    
  }
}
