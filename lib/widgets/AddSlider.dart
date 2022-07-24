import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';




class AddSlider extends StatelessWidget {
  get callbackFunction => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: TextButton(

            onPressed: ()
            {
            },
            child: Container(
              height: 200.0,
              width: double.infinity,
              child: CarouselSlider(
                  items: [
                    Image.asset(
                      "images/jee wallpaper.png",
                      height: 150,
                      width: double.infinity,
                    ),
                    Image.asset(
                      "images/neet_wallpaper.jpg",
                      height: 150,
                      width: double.infinity,
                    ),
                    Image.asset(
                      "images/upsc_wallpaper.jpg",
                      height: 150,
                      width: double.infinity,
                    ),
                    Image.asset(
                      "images/aims_wallpaper.jpg",
                      height: 150,
                      width: double.infinity,
                    ),

                  ],
                  options: CarouselOptions(

                    height: 400,
                    aspectRatio: 16/9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
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
