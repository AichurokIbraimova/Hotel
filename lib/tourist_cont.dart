// import 'package:flutter/material.dart';
// import 'package:tz2/booking_page.dart';
// import 'package:tz2/theme/app_text_styles.dart';
// import 'package:tz2/theme/app_texts.dart';

// class TouristCard extends StatefulWidget {
//   const TouristCard({super.key, required this.text});
//   final String text;
//   @override
//   State<TouristCard> createState() => _TouristCardState();
// }

// class _TouristCardState extends State<TouristCard> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(15),
//         color: Colors.white,
//       ),
//       width: double.infinity,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 16, right: 16),
//         child: Column(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 Text(
//                   widget.text,
//                   style: TextStyles.makadi,
//                 ),
//                 const SizedBox(
//                   height: 100,
//                 ),
//                 InkWell(
//                   onTap: () {
//                     setState(() {});
//                   },
//                   child: Container(
//                     width: 32,
//                     height: 32,
//                     decoration: ShapeDecoration(
//                       color: const Color(0x190D72FF),
//                       shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(6)),
//                     ),
//                     child: const Icon(Icons.keyboard_arrow_up),
//                   ),
//                 )
//               ],
//             ),
//             const TextFormWidget(title: AppTexts.name),
//             const SizedBox(height: 8),
//             const TextFormWidget(title: AppTexts.surname),
//             const SizedBox(height: 8),
//             const TextFormWidget(title: AppTexts.birthday),
//             const SizedBox(height: 8),
//             const TextFormWidget(title: AppTexts.graj),
//             const SizedBox(height: 8),
//             const TextFormWidget(title: AppTexts.nomZag),
//             const SizedBox(height: 8),
//             const TextFormWidget(title: AppTexts.srok),
//           ],
//         ),
//       ),
//     );
//   }
// }
