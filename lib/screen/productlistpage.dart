import 'package:fashan_zone/screen/detailspage.dart';
// import 'package:fashan_zone/screen/home_page.dart';
import 'package:fashan_zone/widgets/customtextwidgets.dart';
// import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';

import '../modelclass/imagelist.dart';

class ProductListPage extends StatefulWidget {
  List<ImageDataList> infoImage;
  ProductListPage(this.infoImage, {super.key});

  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override
  Widget build(BuildContext context) {
    final PageController _pageController = PageController(
        viewportFraction: frection,
        initialPage: (widget.infoImage.length / 2).toInt());
    return Scaffold(
      backgroundColor: Color(0xfff5ebea),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            child: Container(
              // color: Colors.red,
              height: 60,
              child: Padding(
                padding: horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu),
                    Row(
                      children: [
                        Icon(Icons.search),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.shop)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: HeadingText('Find Your Style'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 16, bottom: 24),
            child: Container(
              height: 60,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            isClick = index;
                            setState(() {});
                          },
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: isClick == index
                                      ? Colors.black
                                      : Colors.transparent,
                                  border: Border.all(
                                      color: isClick == index
                                          ? Colors.transparent
                                          : Colors.black)),
                              child: Center(
                                child: SubtitleText(
                                  widget.infoImage[index].catagories[index]
                                      .toString(),
                                  color: isClick == index ? Colors.white : null,
                                ),
                              )),
                        ),
                    separatorBuilder: (context, index) => SizedBox(
                          width: 10,
                        ),
                    itemCount: widget.infoImage.length),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: PageView.builder(
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            DetailsProductPage(widget.infoImage[index]),
                      )),
                  child: Column(
                    children: [
                      Expanded(
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Positioned(
                              // height: MediaQuery.of(context).size.height * .,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.network(
                                  widget.infoImage[index].user!.imgList[1]
                                      .toString(),
                                  fit: BoxFit.cover,

                                  // height: MediaQuery.of(context).size.height,
                                  // width: 200,
                                ),
                              ),
                            ),
                            Positioned(
                                right: 0,
                                top: 0,
                                child: FavoriteButton(
                                  iconSize: 70,
                                  valueChanged: (isFavorite) {},
                                ))
                          ],
                        ),
                      ),
                      HeadingText(
                        widget.infoImage[index].user!.title,
                        ml: 1,
                        of: TextOverflow.ellipsis,
                      ),
                      Row(
                        textBaseline: TextBaseline.alphabetic,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                          SubtitleText(
                            '\$',
                            color: Colors.orangeAccent,
                          ),
                          HeadingText(widget.infoImage[index].user!.price)
                        ],
                      )
                    ],
                  ),
                ),
                itemCount: widget.infoImage.length,
                controller: _pageController,
              )),
          Padding(
            padding: all,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HeadingText('Most Popular'),
                GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        builder: (context) => GridView.count(
                            crossAxisCount: 2,
                            children: List.generate(
                                widget.infoImage.length,
                                (index) => Stack(
                                      children: [
                                        Image.network(
                                          widget.infoImage[index].user!
                                              .imgList[2],
                                          fit: BoxFit.cover,
                                        ),
                                        FavoriteButton(
                                          iconSize: 30,
                                          valueChanged: (_isFavorite) {},
                                        )
                                      ],
                                    ))),
                      );
                    },
                    child: SubtitleText('See all')),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ListView.separated(
                reverse: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                DetailsProductPage(widget.infoImage[index]),
                          )),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              widget.infoImage[index].user!.imgList[0]
                                  .toString(),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            right: 10,
                            top: 10,
                            child: FavoriteButton(
                              iconSize: 30,
                              valueChanged: (_isFavorite) {},
                            ),
                          )
                        ],
                      ),
                    ),
                separatorBuilder: (context, index) => SizedBox(width: 16),
                itemCount: widget.infoImage.length),
          )
        ],
      ),
    );
  }

  int? isClick;
  final double frection = .55;
  int? x;
}

class FavoriteButton extends StatefulWidget {
  FavoriteButton({
    double? iconSize,
    Color? iconColor,
    Color? iconDisabledColor,
    bool? isFavorite,
    required Function valueChanged,
    Key? key,
  })  : _iconSize = iconSize ?? 60.0,
        _iconColor = iconColor ?? Colors.redAccent,
        _iconDisabledColor = iconDisabledColor ?? Colors.white,
        _isFavorite = isFavorite ?? false,
        _valueChanged = valueChanged,
        super(key: key);

  final double _iconSize;
  final Color _iconColor;
  final bool _isFavorite;
  final Function _valueChanged;
  final Color? _iconDisabledColor;

  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _sizeAnimation;

  late CurvedAnimation _curve;

  double _maxIconSize = 0.0;
  double _minIconSize = 0.0;

  final int _animationTime = 400;

  bool _isFavorite = false;
  bool _isAnimationCompleted = false;

  @override
  void initState() {
    super.initState();

    _isFavorite = widget._isFavorite;
    _maxIconSize = (widget._iconSize < 20.0)
        ? 20.0
        : (widget._iconSize > 100.0)
            ? 100.0
            : widget._iconSize;
    final double _sizeDifference = _maxIconSize * 0.30;
    _minIconSize = _maxIconSize - _sizeDifference;

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: _animationTime),
    );

    _curve = CurvedAnimation(curve: Curves.slowMiddle, parent: _controller);
    Animation<Color?> _selectedColorAnimation = ColorTween(
      begin: widget._iconColor,
      end: widget._iconDisabledColor,
    ).animate(_curve);

    Animation<Color?> _deSelectedColorAnimation = ColorTween(
      begin: widget._iconDisabledColor,
      end: widget._iconColor,
    ).animate(_curve);

    _colorAnimation = (_isFavorite == true)
        ? _selectedColorAnimation
        : _deSelectedColorAnimation;
    _sizeAnimation = TweenSequence(
      <TweenSequenceItem<double>>[
        TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: _minIconSize,
            end: _maxIconSize,
          ),
          weight: 50,
        ),
        TweenSequenceItem<double>(
          tween: Tween<double>(
            begin: _maxIconSize,
            end: _minIconSize,
          ),
          weight: 50,
        ),
      ],
    ).animate(_curve);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _isAnimationCompleted = true;
        _isFavorite = !_isFavorite;
        widget._valueChanged(_isFavorite);
      } else if (status == AnimationStatus.dismissed) {
        _isAnimationCompleted = false;
        _isFavorite = !_isFavorite;
        widget._valueChanged(_isFavorite);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (BuildContext context, _) {
        return InkResponse(
          onTap: () {
            setState(() {
              if (_isAnimationCompleted == true) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
            });
          },
          child: _isFavorite == true
              ? Icon(
                  (Icons.favorite),
                  color: _colorAnimation.value,
                  size: _sizeAnimation.value,
                )
              : Icon(
                  (Icons.favorite_border),
                  color: _colorAnimation.value,
                  size: _sizeAnimation.value,
                ),
        );
      },
    );
  }
}
