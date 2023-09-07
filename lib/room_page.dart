import 'package:flutter/material.dart';
import 'package:tz2/booking_page.dart';
import 'package:tz2/carousel_widget.dart';
import 'package:tz2/constants/api_const.dart';
import 'package:tz2/hotel_page.dart';
import 'package:tz2/models/room_model.dart';
import 'package:tz2/services/api_service.dart';
import 'package:tz2/theme/app_colors.dart';
import 'package:tz2/theme/app_text_styles.dart';
import 'package:tz2/theme/app_texts.dart';

class RoomPage extends StatefulWidget {
  const RoomPage({super.key});

  @override
  State<RoomPage> createState() => _RoomPageState();
}

class _RoomPageState extends State<RoomPage> {
  List<Room?> rooms = [];
  @override
  void initState() {
    super.initState();
    getData1();
  }

  void getData1() async {
    rooms = (await ApiService().getUsers1())!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cont,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
        ),
        backgroundColor: AppColors.white,
        title: const Text(
          AppTexts.makadi,
          style: TextStyles.hotel,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ...rooms.map(
              (room) => Container(
                padding: EdgeInsetsDirectional.all(16),
                width: double.infinity,
                color: AppColors.white,
                child: Column(
                  children: [
                    CarouselWidget(urls: room!.imageUrls),
                    Text(
                      room.name,
                      style: TextStyles.standart,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Wrap(
                      spacing: 8,
                      runSpacing: 8,
                      children: [
                        ...room.peculiarities.map(
                          (e) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: AppColors.cont,
                            ),
                            child: Text(
                              e.toString(),
                              style: TextStyles.zaTur,
                            ),
                            // width: 235,
                            // height: 19,
                          ),
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
                        Row(
                          children: [
                            Text(
                              "${room.price} ₽",
                              style: TextStyles.ot,
                            ),
                            Text(
                              room.pricePer.toString(),
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
                      title: '',
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
          ],
        ),
      ),
    );
  }
}
