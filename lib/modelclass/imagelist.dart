import 'package:flutter/cupertino.dart';

var users = ProductData.genarateProductList();

class ImageDataList {
  ImageDataList({
    this.user,
    this.title,
    this.subTitle,
    this.imageLink,
  });
  final String? imageLink;
  final String? title;
  final String? subTitle;
  final ProductData? user;

  List<String> catagories = catagoriess;

  get length => null;

  static List<ImageDataList> genarateImageList() {
    return [
      ImageDataList(
        user: users[0],
        imageLink: 'assets/images/p1.jpg',
        subTitle: 'Goutom',
        title: 'HUNTER GREEN LONG SLEEVE SMOCKED MINI DRESS',
      ),
      ImageDataList(
        user: users[1],
        imageLink: 'assets/images/p2.jpg',
        subTitle: 'ROY',
        title: 'Crépe Erase Advanced Body Repair Treatment',
      ),
      ImageDataList(
        user: users[2],
        imageLink: 'assets/images/p3.jpg',
        subTitle: 'ROY',
        title: 'Crépe Erase Advanced Body Repair Treatment',
      ),
      ImageDataList(
        user: users[3],
        imageLink: 'assets/images/poduct3.jpeg',
        subTitle: 'ROY',
        title: 'Amazon Essentials Women\'s Pull-on Denim Jegging',
      ),
      ImageDataList(
        user: users[4],
        imageLink: 'assets/images/poduct5.jpeg',
        subTitle: 'ROY',
        title: 'Amazon Essentials Women\'s Pull-on Denim Jegging',
      ),
    ];
  }
}

class ProductData {
  ProductData(
    this.id, {
    // this.aboutPage =  DetailsProductPage(),
    // this.info,
    this.price = '',
    this.imgList = const [],
    this.type = '',
    this.title = '',
    this.review = '',
    this.rate = 0.0,
    this.size = productSize,
    this.color = produtColorList,
  });
  final List<String> imgList;
  final String title, type, price, review;
  final double rate;
  final List size;
  final List<Color> color;
  // final ProductData? info;
  final int id;
  // final Widget aboutPage;
  static List<ProductData> genarateProductList() {
    return [
      ProductData(
        1,
        imgList: [
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/1280w/products/27843/170191/green-long-sleeve-smocked-mini-dress12__17338.1666362542.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27843/170189/green-long-sleeve-smocked-mini-dress10__22635.1666362534.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/1280w/products/27843/170188/green-long-sleeve-smocked-mini-dress14__39357.1666362537.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27843/170186/green-long-sleeve-smocked-mini-dress15__97067.1666362536.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27843/170190/green-long-sleeve-smocked-mini-dress11__84039.1666362537.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27843/170192/green-long-sleeve-smocked-mini-dress13__68358.1666362540.jpg?c=3',
        ],
        type: 'Shoes',
        price: '17.87',
        title: 'Casual Jense Shoes',
        review: '11.2k',
        rate: 4.8,
        // size: [8, 9, 10, 11, 12, 13, 14],
      ),
      ProductData(
        2,
        imgList: [
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/1280x1280/products/27814/169496/ivory-crew-neck-sweater115__51016.1665509343.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27814/169495/ivory-crew-neck-sweater117__43786.1665509336.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27814/169499/ivory-crew-neck-sweater118__66847.1665509339.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27814/169497/ivory-crew-neck-sweater112__76631.1665513658.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27814/169501/ivory-crew-neck-sweater111__14506.1665513661.jpg?c=3',
        ],
        type: 'Shoes',
        price: '41.00',
        title: 'HOT CHOCOLATE COLORBLOCK TURTLE NECK SWEATER',
        review: 'review',
        rate: 4.8,
        // size: [8, 9, 10, 11, 12, 13, 14],
      ),
      ProductData(
        3,
        imgList: [
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/1280w/products/27846/169762/oversized-ivory-beige-long-sleeve-turtleneck-sweater138__69343.1665758786.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27846/169760/oversized-ivory-beige-long-sleeve-turtleneck-sweater142__53813.1665758789.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27846/169763/oversized-ivory-beige-long-sleeve-turtleneck-sweater139__17806.1665758791.jpg?c=3https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/1280w/products/27846/169764/oversized-ivory-beige-long-sleeve-turtleneck-sweater143__63194.1665758797.jpg?c=3',
          'https://cdn11.bigcommerce.com/s-p0otkti/images/stencil/640w/products/27846/169761/oversized-ivory-beige-long-sleeve-turtleneck-sweater136__41722.1665758802.jpg?c=3',
        ],
        type: 'Shoes',
        price: '39.00',
        title: 'LYLA OATMEAL LONG SLEEVE KNIT TOP',
        review: 'review',
        rate: 4.8,
      ),
      ProductData(
        4,
        imgList: [
          'https://m.media-amazon.com/images/I/71d4mPI5xQL._AC_UX569_.jpg',
          'https://m.media-amazon.com/images/I/81v2Ir-aMgL._AC_SX569._SX._UX._SY._UY_.jpg',
          'https://m.media-amazon.com/images/I/71Lg2o6eDLL._AC_SX569._SX._UX._SY._UY_.jpg',
          'https://m.media-amazon.com/images/I/71id5DD4qYL._AC_SX569._SX._UX._SY._UY_.jpg',
          'https://m.media-amazon.com/images/I/81eqAQWWvOS._AC_SX569._SX._UX._SY._UY_.jpg',
        ],
        type: 'Shoes',
        price: '41.00',
        title: 'Ryka Women\'s Sky Walking Shoe',
        review: 'review',
        rate: 4.8,
      ),
      ProductData(
        4,
        imgList: [
          'https://www.blueillusion.com/productimages/medium/1/30396_461132_58179.jpg',
          'https://www.blueillusion.com/productimages/medium/2/30396_461132_58182.jpg',
          'https://www.blueillusion.com/productimages/medium/2/30396_461132_58184.jpg',
          'https://www.blueillusion.com/productimages/medium/2/30396_461132_58183.jpg',
        ],
        type: 'Shoes',
        price: '41.00',
        title: 'Ryka Women\'s Sky Walking Shoe',
        review: 'review',
        rate: 4.8,
      ),
    ];
  }
}

const List<String> productSize = ['S', 'M', 'L', 'XL', 'XXL'];

const List<Color> produtColorList = [
  Color(0xfff3f7f8),
  Color(0xffd6e1ff),
  Color(0xfff5d6ff),
  Color(0xffd4eeeb),
  Color(0xffddd9d0),
  Color(0xffffd5df),
  // Color(0xfffcc2a0),
];

class ProductImage {
  ProductImage(this.iLink);
  final String iLink;
}

final List<ProductImage> productImageList = [
  ProductImage(''),
  ProductImage(''),
  ProductImage(''),
  ProductImage(''),
  ProductImage(''),
];

const List<String> catagoriess = ['All', 'Winter', 'Women', 'Eyewear', 'Cream'];
