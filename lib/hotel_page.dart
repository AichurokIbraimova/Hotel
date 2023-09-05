import 'package:flutter/material.dart';
import 'package:tz2/carousel_widget.dart';
import 'package:tz2/room_page.dart';
import 'package:tz2/theme.dart';

class HotelPage extends StatefulWidget {
  const HotelPage({super.key});

  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F9),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: const Text('Отель'),
      ),
      body: Container(
        width: 375,
        height: 530,
        color: const Color(0xffF6F6F9),
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            color: Colors.white,
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
                      // color: Color(0xffFFA800) ,
                      child: const Row(
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
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                          color: const Color.fromRGBO(255, 199, 0, 0.20)),
                    ),
                  ],
                ),
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
               
                Text('Об отеле', style: theme.textTheme.bodyLarge),
                
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
                    'Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!'),
                const SizedBox(
                  height: 20,
                ),
                Container(color: const Color(0xffFBFBFC),
          
          
                  child: const Column(
                    children: [
                      ContWidget(image: 'assets/images/emoji-happy.png', text: 'Удобства',),
                       Divider(indent: 20, endIndent: 30, color: Color.fromRGBO(130
                       , 135, 150, 0.15)),
                       ContWidget(image: 'assets/images/close-square.png', text: 'Что включено',),
                         Divider(indent: 20, endIndent: 30, color: Color.fromRGBO(130, 135, 150, 0.15),),
                        ContWidget(
                        image: 'assets/images/tick-square.png',
                        text: 'Что не включено',
                      ),
          
                     
                    ],
                  ),
                  
                ),
                SizedBox(height: 8,),
                Column(
                  children: [
                    Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
             // maximumSize: Size.fromHeight(),
            ),
              onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const RoomPage() ));
                     }, 
                     child: const Text('К выбору номера'),),
                    ),
                  ],
                ),
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ContWidget extends StatelessWidget {
  final String image;
  final String text;
  const ContWidget({
    super.key, required this.image, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Image.asset(image),
                
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 100),
                child: Row(
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text),
          const Text(
            'Самое необходимое',
            style: TextStyle(color: Colors.black),
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
