import 'package:fashan_zone/modelclass/imagelist.dart';
import 'package:fashan_zone/widgets/customtextwidgets.dart';
import 'package:flutter/material.dart';

class DetailsProductPage extends StatelessWidget {
  DetailsProductPage(
    this.listImage, {
    super.key,
  });

  ImageDataList listImage;

  // final imageInfo = ImageDataList.genarateImageList();
  final info = ProductData.genarateProductList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
        child: Column(
          children: [
            HeadingText(
              listImage.user!.title.toString(),
              ls: 0,
              of: TextOverflow.ellipsis,
            ),
            SizedBox(height: 10),
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  HeadingText(
                    '⭐ ${listImage.user!.rate.toString()} ',
                    ls: 0,
                    fs: 18,
                  ),
                  HeadingText(
                    ' (2.6k+ review)',
                    fs: 16,
                    ls: 0,
                    color: Colors.black.withOpacity(.4),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: PageView.builder(
                itemBuilder: (context, index) => Image(
                  image:
                      NetworkImage(listImage.user!.imgList[index].toString()),
                  fit: BoxFit.cover,
                ),
                itemCount: listImage.user?.imgList.length,
              ),
            )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: HeadingText(
                'Select Image',
                ls: 0,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 60,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        listImage.user!.size.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                  height: 60,
                                  width: 60,
                                  // padding: EdgeInsets.symmetric(
                                  //     horizontal: 12, vertical: 8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      // color: Colors.grey,
                                      border: Border.all(color: Colors.grey)),
                                  child: Center(
                                      child: HeadingText(
                                    listImage.user!.size[index].toString(),
                                    fs: 18,
                                    ls: 0,
                                  ))),
                            )),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: HeadingText('Select Color', ls: 0),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 40,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        listImage.user!.color.length,
                        (index) => Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Container(
                                height: 40,
                                width: 40,
                                // padding: EdgeInsets.symmetric(
                                //     horizontal: 12, vertical: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: listImage.user!.color[index]),
                              ),
                            )),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                children: [
                  Expanded(
                      child: Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      HeadingText(
                        '\$',
                        ls: 0,
                        fs: 15,
                        color: Colors.amberAccent,
                        fw: FontWeight.bold,
                      ),
                      HeadingText(
                        listImage.user!.rate.toString(),
                        fs: 28,
                        ls: 0,
                        of: TextOverflow.ellipsis,
                      ),
                    ],
                  )),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: HeadingText(
                          'Add Card',
                          ls: 0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
