import 'package:flutter/material.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: const Text('Steigenberger Makadi'),
      ),
      body: Container(
        padding: EdgeInsetsDirectional.all(16),
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
      Image.asset('assets/images/image2.png'),
      Text('Стандартный с видом на бассейн или сад'),
SizedBox(height: 8,),
      Row(
              children: [
                Container(
                  width: 235,
                  height: 19,
                  // color: Color(0xffFFA800) ,
                  child: const Row(
                    children: [
                      Text('Все включено'),
                      Text(
                        'Кондиционер',
                        style: TextStyle(
                         // color: Color(0xff828796),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xff828796)),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
Column(
  children: [
    Container(
      width: 192,
      height: 29,
      child: Row(
        children: [
          Text('Подробнее о номере',
          style: TextStyle(color: Color.fromRGBO(13, 114, 255, 1), fontSize: 16, fontWeight: FontWeight.w500),), Icon(Icons.arrow_forward_ios_outlined, 
          color: Color.fromRGBO(13, 114, 255, 1))
        ],
      ),
      decoration: BoxDecoration(
        color: Color(0xffE7F1FF),
        
      ),
      
    ),
    SizedBox(
      height: 30,
    ),
    Row(children: [
      Text('186 600 ₽'), Text('за 7 ночей с перелётом')
    ],)
  ],
),

      Text('')
      // Container(
      //   width: 120,
      //   height: 19,
      //   color: Color.fromRGBO(130, 135, 150, 1),
      //   child: Row(mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Text('Все включено'),Text('Кондиционер'),
      //     ],
      //   ),
        
      //   ),
        
          ],
        ),
      ),
    );
  }
}