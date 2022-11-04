import 'package:dots_indicator/dots_indicator.dart';
import 'package:fashan_zone/screen/productlistpage.dart';

import 'package:fashan_zone/widgets/customtextwidgets.dart';
import 'package:fashan_zone/widgets/scroll_homepage.dart';
import 'package:flutter/material.dart';

import '../modelclass/imagelist.dart';

var currentPage = 0.0;

var x = 0;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  /* @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        currentPage = pageController.page!;
      });
    });
  } */

  @override
  Widget build(BuildContext context) {
    final listImage = ImageDataList.genarateImageList();

    return Scaffold(
        backgroundColor: Color(0xfff5efef),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 6,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    x = value;
                  });
                },
                controller: pageController,
                itemCount: listImage.length,
                itemBuilder: (context, index) =>
                    HomePageScroll(listImage[index]),
              ),
            ),

            /* Expanded(
              flex: 2,
              child: Placeholder(),
            ) */
            DotsIndicator(
              decorator: DotsDecorator(
                  color: Colors.grey.withOpacity(.4),
                  activeColor: Colors.black.withOpacity(.6)),
              dotsCount: ImageDataList.genarateImageList().length,
              position: x.toDouble(),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: Row(
                            children: [
                              HeadingText('Tops',
                                  fs: 18, color: Colors.black.withOpacity(.4)),
                              SizedBox(width: 40),
                              Container(
                                width: 10,
                                height: 2,
                                color: Colors.red,
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: HeadingText(
                            'T-Shirts',
                            fs: 18,
                            color: Colors.black.withOpacity(.4),
                            ls: 0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4.0),
                          child: HeadingText('Hodies',
                              fs: 18,
                              ls: 0,
                              color: Colors.black.withOpacity(.4)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: HeadingText('126+ Categories',
                              td: TextDecoration.underline,
                              fs: 18,
                              ls: 0,
                              color: Colors.black.withOpacity(.4)),
                        ),
                      ],
                      // color: Colors.red,
                    )),
                    Expanded(
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Positioned(
                            child: Container(
                              width: .5,
                              color: Colors.red.withOpacity(.6),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                backgroundColor: Colors.transparent,
                                isScrollControlled: true,
                                context: context,
                                builder: (context) => Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              'https://assets0.mirraw.com/images/8499965/image_large_m.jpeg?1606728825')),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(25),
                                      ),
                                      color: Color(0xffddd9d0)),
                                  height: 600,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      TextFormField(),
                                      Spacer(),
                                      MaterialButton(
                                        // elevation: 0,
                                        color:
                                            Color(0xffddd9d0).withOpacity(.8),
                                        onPressed: () {
                                          Navigator.pushReplacement(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    ProductListPage(listImage),
                                              ));
                                        },
                                        child: Text('Next'),
                                      )
                                    ],
                                  ),
                                ),
                              );
                              setState(() {});
                            },
                            child: Positioned(
                              // width: double.infinity,
                              // height: ,
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                  vertical: 15,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                  color: Colors.black,
                                ),

                                child: HeadingText(
                                  'Sign up →',
                                  ta: TextAlign.center,
                                  color: Colors.white,
                                ),
                                // color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
