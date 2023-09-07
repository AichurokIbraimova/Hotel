import 'package:flutter/material.dart';
import 'package:tz2/theme/app_colors.dart';
import 'package:tz2/theme/app_text_styles.dart';
import 'package:tz2/theme/app_texts.dart';
import 'package:tz2/tourist_cont.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cont,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const Text(
          AppTexts.booking,
          style: TextStyles.hotel,
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              width: 435,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 150,
                    height: 30,
                    decoration: const BoxDecoration(
                      color: AppColors.star,
                    ),
                    child: const Row(
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
                  ),
                  const Text(
                    AppTexts.makadi,
                    style: TextStyles.makadi,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    AppTexts.madinat,
                    style: TextStyles.madinat,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.white,
              ),
              child: Table(
                children: const [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          AppTexts.vylet,
                          style: TextStyles.zaTur,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          AppTexts.sp,
                          style: TextStyles.vip,
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          AppTexts.dates,
                          style: TextStyles.zaTur,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          AppTexts.egypt,
                          style: TextStyles.vip,
                        ),
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          AppTexts.numberNights,
                          style: TextStyles.zaTur,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          AppTexts.dates1,
                          style: TextStyles.vip,
                        ),
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          AppTexts.number,
                          style: TextStyles.vip,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          AppTexts.night,
                          style: TextStyles.zaTur,
                        ),
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          AppTexts.hotel,
                          style: TextStyles.zaTur,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          AppTexts.makadi,
                          style: TextStyles.vip,
                        ),
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          AppTexts.number,
                          style: TextStyles.zaTur,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          AppTexts.standart,
                          style: TextStyles.vip,
                        ),
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ]),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          AppTexts.nutrition,
                          style: TextStyles.zaTur,
                        ),
                      ),
                      TableCell(
                        child: Text(
                          AppTexts.vsevkl,
                          style: TextStyles.vip,
                        ),
                      ),
                    ],
                  ),
                  TableRow(children: [
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ]),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 343,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  Text(
                    AppTexts.information,
                    style: TextStyles.obOtele,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  TextFormWidget(
                    title: AppTexts.nomer,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TextFormWidget(
                    title: AppTexts.email,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    AppTexts.etiDannye,
                    style: TextStyles.etiDannye,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Container(
              width: 375,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        AppTexts.first,
                        style: TextStyles.obOtele,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {});
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: ShapeDecoration(
                            color: const Color(0x190D72FF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6)),
                          ),
                          child: const Icon(
                            Icons.keyboard_arrow_up,
                            color: Color.fromRGBO(13, 114, 255, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 8),
                  TextFormWidget(title: AppTexts.name),
                  const SizedBox(height: 8),
                  const TextFormWidget(title: AppTexts.surname),
                  const SizedBox(height: 8),
                  const TextFormWidget(title: AppTexts.birthday),
                  const SizedBox(height: 8),
                  const TextFormWidget(title: AppTexts.graj),
                  const SizedBox(height: 8),
                  const TextFormWidget(title: AppTexts.nomZag),
                  const SizedBox(height: 8),
                  const TextFormWidget(title: AppTexts.srok),
                  const SizedBox(height: 8),
                  Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          AppTexts.second,
                          style: TextStyles.obOtele,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {});
                          },
                          child: Container(
                            width: 32,
                            height: 32,
                            decoration: ShapeDecoration(
                              color: const Color(0x190D72FF),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            child: const Icon(
                              Icons.keyboard_arrow_up,
                              color: Color.fromRGBO(13, 114, 255, 1),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppTexts.addtourist,
                                style: TextStyles.obOtele,
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  decoration: ShapeDecoration(
                                    color: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.add,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ])
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextFormWidget extends StatelessWidget {
  final String title;

  const TextFormWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(
          title,
          style: TextStyles.nomer,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 15,
        ),
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.cont,
              fontSize: 17,
              height: 0.9,
            ),
        hintStyle: TextStyles.nomer,
        filled: true,
        fillColor: AppColors.cont,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
