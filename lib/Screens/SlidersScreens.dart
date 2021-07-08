import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:intershipapp/providers/SliderImages.dart';
import 'package:intershipapp/providers/SliderImages.dart' as pre;
import 'package:intershipapp/Screens/signIn.dart';

class SliderScreen extends StatefulWidget {
  @override
  _SliderScreenState createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  SliderList _sliderList = SliderList();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1.0,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 5),
              height: MediaQuery.of(context).size.height * 1.0),
          items: _sliderList.list.map((pre.Slider slide) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  height: MediaQuery.of(context).size.height * 1.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(slide.image), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(6),
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 50,
          right: 0,
          child: GestureDetector(
            onTap: () => Navigator.pushNamed(context, SignIn.routeName),
            child: Container(
              // color: ,
              width: MediaQuery.of(context).size.width * 0.5,
              height: 60.0,
              padding: EdgeInsets.only(top: 15, right: 15),
              // margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.horizontal(
                  left: Radius.circular(50),
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(fontSize: 25, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
