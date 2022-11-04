import 'dart:math';
import 'package:fashan_zone/screen/detailspage.dart';
import 'package:flutter/material.dart';
import '../modelclass/imagelist.dart';
import 'customtextwidgets.dart';

class HomePageScroll extends StatelessWidget {
  HomePageScroll(
    this.listImage, {
    Key? key,
  }) : super(key: key);
  ImageDataList listImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsProductPage(
                    listImage,
                  ))),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            height: 320,
            width: 220,
            top: 150,
            child: SizedBox(
              child: Transform.rotate(
                angle: pi / -15,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image(
                    image: NetworkImage(listImage.user!.imgList[0].toString()),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 90,
              child: Transform.rotate(
                angle: pi / -15,
                child: Padding(
                  padding: const EdgeInsets.only(right: 90),
                  child: Container(
                    color: Color(0xfffbf0ef).withOpacity(.1),
                    child: HeadingText(
                      'New Arrival',
                      ls: 0.3,
                      fw: FontWeight.w200,
                      color: Colors.red,
                      fs: 44,
                    ),
                  ),
                ),
              )),
          Positioned(
              top: 440,
              child: Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.end,
                  // textBaseline: TextBaseline.ideographic,
                  children: [
                    SizedBox(
                      child: HeadingText(
                        '      ${listImage.subTitle}\n Fashion',
                        fw: FontWeight.w200,
                        fs: 44,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Icon(
                        Icons.diamond_outlined,
                        color: Colors.amber,
                      ),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
