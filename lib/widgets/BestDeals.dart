import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class BestDeals extends StatelessWidget {
  get callbackFunction => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Container(
            height: 200.0,
            width: double.infinity,
            child: TextButton(
              onPressed: (){

              },

              child: CarouselSlider(
                  items: [
                    Image.asset(
                      "images/offer-wallpaper.png",
                      height: 200,
                      width: double.infinity,
                    ),

                  ],
                  options: CarouselOptions(
                    height: 500,
                    aspectRatio: 16/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: Duration(seconds: 4),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  )),

            ),
          ),
        ),
      ],

    );
  }
}
