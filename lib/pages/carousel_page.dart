import 'package:flutter/material.dart';

class CarouselPage extends StatefulWidget {
  @override
  _CarouselPageState createState() => _CarouselPageState();
}

class _CarouselPageState extends State<CarouselPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  void _startAutoSlide() {
    Future.delayed(Duration(seconds: 3), () {
      if (_pageController.hasClients) {
        _currentPage = (_currentPage + 1) % 3;
        _pageController.animateToPage(
          _currentPage,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
        _startAutoSlide();
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Carousel'),
      ),
      body: PageView(
        controller: _pageController,
        children: [
          Image.network('https://utfs.io/f/AKh1tRQO1vwWXnkwiyYRtHqLi4rcvw6BuZdN3VT0sWC2AO7y'),
          Image.network('https://utfs.io/f/AKh1tRQO1vwWwqG7sat8WYAquZn1SBP6biOgNXwKmUVCQTDf'),
          Image.network('https://utfs.io/f/AKh1tRQO1vwW2oEPIwM7jvMfYsaqmcJWb1h54PpzwLBZR2eg'),
        ],
      ),
    );
  }
}