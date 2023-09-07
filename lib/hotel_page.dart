import 'package:flutter/material.dart';
import 'package:tz2/carousel_widget.dart';
import 'package:tz2/room_page.dart';
import 'package:tz2/theme.dart';
import 'package:tz2/theme/app_colors.dart';
import 'package:tz2/theme/app_text_styles.dart';
import 'package:tz2/theme/app_texts.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({super.key});

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cont,
      appBar: AppBar(
        backgroundColor:AppColors.white,
        centerTitle: true,
        title: const Text(AppTexts.hotel,
        style: TextStyles.hotel,),
      ),
      body: Container(
        width: 375,
        height: 530,
        color: AppColors.cont,
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            color: AppColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CarouselWidget(
                  urls: [
                    "https://www.atorus.ru/sites/default/files/upload/image/News/56149/Club_Priv%C3%A9_by_Belek_Club_House.jpg",
                    "https://deluxe.voyage/useruploads/articles/The_Makadi_Spa_Hotel_02.jpg",
                    "https://deluxe.voyage/useruploads/articles/article_1eb0a64d00.jpg",
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                       Container(
                      width: 150,
                      height: 30,
                      
                      child:  const Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: AppColors.star,
                          ),
                          Text(
                            AppTexts.great,
                            style: TextStyles.great,
                            
                              
                            
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.star),
                    ),
                  ],
                ),
                const Text(
                  AppTexts.makadi,
                  style: TextStyles.makadi,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  AppTexts.madinat,
                  style: TextStyles.madinat),
              
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  children:  [
                    Text(
                      AppTexts.ot,
                      style: TextStyles.ot,
                    ),
                    Text(
                     AppTexts.zaTur,
                      style: TextStyles.zaTur,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(AppTexts.obOtele, style: TextStyles.obOtele),
                SizedBox(height: 8,),
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     InkWell(
                      onTap: (){
                        
                      },
                       child: Text(
                        AppTexts.thirdL,
                        style: TextStyles.zaTur,
                                         ),
                     ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      AppTexts.wifi,
                      style: TextStyles.zaTur,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                   
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                    AppTexts.vip,
                    style: TextStyles.vip,),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  color: AppColors.cont1,
                  child: const Column(
                    children: [
                      ContWidget(
                        image: 'assets/images/emoji-happy.png',
                        text: AppTexts.udobstva,
                      ),
                      Divider(
                          indent: 20,
                          endIndent: 30,
                          color:AppColors.divider),
                      ContWidget(
                        image: 'assets/images/close-square.png',
                        text: AppTexts.chtovkl,
                      ),
                      Divider(
                        indent: 20,
                        endIndent: 30,
                        color: AppColors.divider
                      ),
                      ContWidget(
                        image: 'assets/images/tick-square.png',
                        text: AppTexts.chtonevkl,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                CustomButton(text: AppTexts.kvyboru, onPressed: () { 
Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RoomPage()));
                 },),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  const CustomButton({
    super.key, required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
         
            color: AppColors.white,
            
          width: double.infinity,
          
          child: ElevatedButton(
            
            style: ElevatedButton.styleFrom(
              
              backgroundColor: AppColors.textMadinat,
              
              
             
            ),
            onPressed: onPressed,
  
            child:  Text(text,
            style: TextStyles.kvyboru,
            
            ),
          ),
        ),
      ],
    );
  }
}

class ContWidget extends StatelessWidget {
  final String image;
  final String text;
  const ContWidget({
    super.key,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(image),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 100),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(text),
                      const Text(
                        AppTexts.samoe,
                        style: TextStyles.zaTur,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward_ios_rounded),
          ],
        ),
      ],
    );
  }
}
