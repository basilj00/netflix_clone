
// import 'package:flutter/material.dart';
// import 'package:netflix_clone/utils/color_constants.dart';

// class ComingSoonCard extends StatelessWidget {
//   const ComingSoonCard({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Column(
//             children: List.generate(
//               2,
//               (index) => Container(
//                 height: 65,
//                 color: ColorConstants.DarkGrey,
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
//                       child: Image.network(
//                         "https://i.pinimg.com/564x/f1/50/52/f15052c9707659cd87f71a06717846b0.jpg",
//                         height: 55,
//                         width: 113,
//                         fit: BoxFit.fitWidth,
//                       ),
//                     ),
//                     SizedBox(width: 18),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "New Arrival",
//                           style: TextStyle(color: ColorConstants.MainWhite, fontSize: 14),
//                         ),
//                         Text(
//                           "El Chapo",
//                           style: TextStyle(
//                             color: ColorConstants.MainWhite.withOpacity(.83),
//                             fontSize: 14,
//                           ),
//                         ),
//                         Text(
//                           "Nov 6",
//                           style: TextStyle(
//                             color: ColorConstants.LightGrey,
//                             fontSize: 11,
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//               ],
//       ),
//     );
//   }
// }
    