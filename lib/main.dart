import 'package:flutter/material.dart';
import 'package:tz2/carousel_widget.dart';
import 'package:tz2/hotel_page.dart';
import 'package:tz2/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: const HotelPage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F6F9),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Отель'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Container(
            width: 375,
            height: 530,
            decoration: BoxDecoration(
              color: Color(0xffF6F6F9),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(color: Color(0xffF6F6F9)),
                  child: const CarouselWidget(
                    urls: [
                      "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
                      "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
                      "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 30,
                        child: const Column(
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Color.fromRGBO(255, 199, 0, 0.20),
                                ),
                                Text(
                                  '5 Превосходно',
                                  style: TextStyle(
                                    color: Color(0xffFFA800),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        decoration: const BoxDecoration(
                          color: Color.fromRGBO(255, 199, 0, 0.20),
                        ),
                      ),
                    ]),
                Text(
                  'Steigenberger Makadi',
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  'Madinat Makadi, Safaga Road, Makadi Bay, Египет',
                  style: TextStyle(color: Color(0xff0D72FF)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'от 134 673 ₽',
                      style: theme.textTheme.bodyLarge
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'за тур с перелётом',
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: const Color(0xff828796)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  width: 343,
                ),
                Text('Об отеле', style: theme.textTheme.bodyLarge),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 64),
                  child: Container(
                    width: 295,
                    decoration: const BoxDecoration(color: Colors.white),
                    //  height: 66,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          '3-я линия',
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(color: const Color(0xff828796)),
                        ),
                        // SizedBox(
                        //   width: 40,
                        // ),
                        Text(
                          'Платный Wi-Fi в фойе',
                          style: theme.textTheme.bodyMedium
                              ?.copyWith(color: const Color(0xff828796)),
                        ),
                        const SizedBox(
                          height: 8,
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '30 км до аэропорта',
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: const Color(0xff828796)),
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Text(
                      '1 км до пляжа',
                      style: theme.textTheme.bodyMedium
                          ?.copyWith(color: const Color(0xff828796)),
                    )
                  ],
                ),
                const Text(
                    'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!'),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink,
                  ),
                  width: 343,
                  height: 184,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset('assets/images/emoji-happy.png'),
                        Column(
                          children: [
                            Text('data'),
                            Text('data'),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                )

                //   Column(
                //     children: [
                //       Container(child:  const ContWidget(
                //         image: 'assets/images/emoji-happy.png',
                //         text: 'Удобства',
                //       ),

                //       ),
                //              ],
                //            ),
                //           const Divider(indent: 20, endIndent: 30, color: Colors.black),
                //           const ContWidget(
                //             image: 'assets/images/close-square.png',
                //             text: 'Что не включено',
                //           ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// class ContWidget extends StatelessWidget {
//   final String image;
//   final String text;

//   const ContWidget({
//     super.key,
//     required this.image,
//     required this.text,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(
//             left: 10,
//           ),
//           child: Row(
//             children: [
//               Image.asset(image),

//               Row(
//                 children: [
//                   Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(text),
//                       const Text(
//                         'Самое необходимое',
//                         style: TextStyle(color: Colors.black),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               const Icon(Icons.arrow_forward_ios_rounded),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
