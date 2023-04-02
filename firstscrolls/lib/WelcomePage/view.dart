import 'package:firstscrolls/WelcomePage/controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:dots_indicator/dots_indicator.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Image Saly1 = Image(
      image: const AssetImage("assets/images/Saly1.png"),
      width: 368.w,
      height: 368.w,
    );
    Image Saly2 = Image(
      image: const AssetImage("assets/images/Saly2.png"),
      width: 368.w,
      height: 368.w,
    );
    Image Saly3 = Image(
      image: const AssetImage("assets/images/Saly13.png"),
      width: 368.w,
      height: 368.w,
    );

    return Scaffold(
      body: Obx(
        () => SizedBox(
          width: 360.w,
          height: 780.w,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView(
                scrollDirection: Axis.horizontal,
                reverse: false,
                onPageChanged: (index) {
                  controller.changePage(index);
                },
                controller: PageController(
                  initialPage: 0,
                  keepPage: false,
                  viewportFraction: 1,
                ),
                pageSnapping: true,
                physics: const ClampingScrollPhysics(),
                children: [
                  Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 96,
                              left: 4,
                              right: 4,
                            ),
                            child: Saly1,
                          ),
                          Text(
                            'Изучай места Казахстана!',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 26,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          const Text(
                            'Находи новые места для себя и добавляй их в избранные!',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            bottom: 88.w, left: 103.w, right: 103.w),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            alignment: Alignment.center,
                            backgroundColor:
                                MaterialStateProperty.all(Color(0x333333)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Следующая',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFF),
                              fontStyle: FontStyle.normal,
                              fontFamily: 'Raleway',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 96,
                              left: 4,
                              right: 4,
                            ),
                            child: Saly2,
                          ),
                          const Text(
                            'Используй новые технологии для изучения!',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 28,
                              color: Colors.black,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          const Text(
                            'AR, 360 фото, 3д карты и многое другое, только в нашем приложении',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0x333333)),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.black),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.white)),
                        ),
                        child: const Text(
                          'Следующая',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFF),
                            fontStyle: FontStyle.normal,
                            fontFamily: 'Raleway',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 96,
                            left: 4,
                            right: 4,
                          ),
                          child: Saly3,
                        ),
                        const Text(
                          'Заходи и начинай свое путешествие!',
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                            color: Colors.black,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        const Text(
                          'Узнавай больше нового используя наше приложение',
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                            fontSize: 12,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Positioned(
                          bottom: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              // controller.handleSignIn();
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              side: MaterialStateProperty.all(
                                  const BorderSide(color: Colors.white)),
                            ),
                            child: const Text('Вход'),
                          ),
                        ),
                        Positioned(
                          bottom: 90,
                          child: ElevatedButton(
                            onPressed: () {
                              // controller.handleSignIn();
                            },
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              side: MaterialStateProperty.all(
                                  const BorderSide(color: Colors.white)),
                            ),
                            child: const Text('Регистрация'),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
              Positioned(
                bottom: 10,
                child: DotsIndicator(
                  position: controller.state.index.value.toDouble(),
                  dotsCount: 3,
                  reversed: false,
                  mainAxisAlignment: MainAxisAlignment.center,
                  decorator: DotsDecorator(
                    activeColor: Colors.black,
                    size: const Size.square(6),
                    activeSize: const Size(24, 6),
                    activeShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
