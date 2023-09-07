
import 'package:flutter/material.dart';

import 'package:tz2/carousel_widget.dart';
import 'package:tz2/room_page.dart';
import 'package:tz2/theme/app_text_styles.dart';
import 'package:tz2/theme/app_texts.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  final _totalDots = 5;
  int _currentPosition = 0;

  String getPrettyCurrPosition() {
    return (_currentPosition + 1.0).toStringAsPrecision(3);
  }

  // final decorator = DotsDecorator(
  //   activeColor: Colors.black,
  //   size: const Size.square(7.0),
  //   activeSize: const Size.square(7.0),
  //   activeShape: RoundedRectangleBorder(
  //     borderRadius: BorderRadius.circular(25.0),
  //   ),
  // );
  // List<HotelModel>? hotelList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Center(
          child: Text(
           AppTexts.hotel,
         style: TextStyles.hotel,
          
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CarouselWidget(urls: [
                    "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
                    "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
                    "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg"
                  ]),
                  const SizedBox(height: 16),
                  Container(
                    width: 150,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              AppTexts.great,
                              style: TextStyles.great,
                             
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    AppTexts.makadi,
                    style:TextStyles.makadi ,
                  ),
                  SizedBox(width: 10),
                  const Text(
                    AppTexts.madinat,
                    style: TextStyles.madinat,
                  ),
                  const Row(
                    children: [
                      Text(AppTexts.ot,
                      style: TextStyles.ot,),
                      SizedBox(width: 10),
                      Text(
                       AppTexts.zaTur,
                       
                        style: TextStyles.zaTur,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 428,
                  width: double.infinity,
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.only(left: 16, right: 16, bottom: 16),
                        child:
                            Text(AppTexts.obOtele,
                            style: TextStyles.obOtele,
                            ),
                      ),
                      Row(
                        children: [
                          Container(
                            decoration:
                                const BoxDecoration(color: Colors.grey),
                            width: 140,
                            height: 30,
                            child: Center(
                              child: InkWell(
                                onTap: () {},
                                child: const Text(
                                  AppTexts.thirdL,
                                  style: TextStyles.thirdL,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          const Text(
                           AppTexts.wifi,
                           style: TextStyles.thirdL,
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      const Padding(
                        padding: EdgeInsets.only(left: 16),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                               AppTexts.km,
                               style: TextStyles.thirdL,
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                               AppTexts.onekm,
                               style: TextStyles.thirdL,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Text(AppTexts.vip,
                                style: TextStyles.vip,),
                                SizedBox(height: 10),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: Container(
                          decoration: const BoxDecoration(
                              color: Colors.grey,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: 55,
                          child: ContainerButtom(
                              image:Image.asset("assets/images/emoji-happy.png"),
                              text: AppTexts.udobstva,
                              ),
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        indent: 45,
                        endIndent: 45,
                      ),
                      ContainerButtom(
                        image: Image.asset("assets/images/tick-square.png"),
                        text:AppTexts.chtovkl,
                      ),
                      const Divider(
                        color: Colors.grey,
                        indent: 45,
                        endIndent: 45,
                      ),
                      ContainerButtom(
                        image: Image.asset("assets/images/close-square.png"),
                        text:AppTexts.chtonevkl,
                      ),
                    ],
                  ),
                ),
                MyCustomButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const RoomPage())));
                    },
                    borderRadius: 20, // Здесь можно настроить радиус границ
                    buttonText:AppTexts.kvyboru, style: TextStyles.kvyboru,
                    ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerButtom extends StatelessWidget {
  const ContainerButtom({
    super.key,
    required this.image,
    required this.text,
  });
  final Image image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 40, top: 10),
          child: image,
        ),
        const SizedBox(
          width: 15,
        ),
        Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                const Text('', style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
        const SizedBox(
          width: 100,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }
}

class MyCustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double borderRadius;
  final String buttonText;
  final TextStyle style;

  MyCustomButton({
    required this.onPressed,
    required this.borderRadius,
    required this.buttonText,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
            minimumSize: const Size.fromHeight(48)),
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
