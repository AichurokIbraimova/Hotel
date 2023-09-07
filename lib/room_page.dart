import 'package:flutter/material.dart';
import 'package:tz2/booking_page.dart';
import 'package:tz2/carousel_widget.dart';
import 'package:tz2/hotel_page.dart';
import 'package:tz2/theme/app_colors.dart';
import 'package:tz2/theme/app_text_styles.dart';
import 'package:tz2/theme/app_texts.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cont,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: const Text(
          AppTexts.makadi,
          style: TextStyles.hotel,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsetsDirectional.all(16),
          width: double.infinity,
          color: AppColors.white,
          child: Column(
            children: [
              CarouselWidget(
                urls: [
                  "https://www.atorus.ru/sites/default/files/upload/image/News/56871/%D1%80%D0%B8%D0%BA%D1%81%D0%BE%D1%81%20%D1%81%D0%B8%D0%B3%D0%B5%D0%B9%D1%82.jpg",
                  "https://q.bstatic.com/xdata/images/hotel/max1024x768/267647265.jpg?k=c8233ff42c39f9bac99e703900a866dfbad8bcdd6740ba4e594659564e67f191&o=",
                  "https://worlds-trip.ru/wp-content/uploads/2022/10/white-hills-resort-5.jpeg",
                ],
              ),
              Text(
                AppTexts.standart,
                style: TextStyles.standart,
              ),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Container(
                    width: 235,
                    height: 19,
                    //color: AppColors.cont1,
                    child: const Row(
                      children: [
                        Text(
                          AppTexts.vsevkl,
                          style: TextStyles.zaTur,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          AppTexts.kondicioner,
                          style: TextStyles.zaTur,
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.cont1),
                  ),
                ],
              ),
              SizedBox(
                height: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 192,
                    height: 29,
                    child: Row(
                      children: [
                        Text(AppTexts.podr, style: TextStyles.podr),
                        Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: AppColors.textMadinat,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: AppColors.podrCont,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  const Row(
                    children: [
                      Text(
                        AppTexts.price,
                        style: TextStyles.ot,
                      ),
                      Text(
                        AppTexts.za7,
                        style: TextStyles.zaTur,
                      )
                    ],
                  )
                ],
              ),
              CustomButton(
                text: AppTexts.vybrat,
                onPressed: () {
                 Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BookingPage()));
                },
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Container(
                      color: AppColors.white,
                      child: Image.asset('assets/images/image3.png')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
