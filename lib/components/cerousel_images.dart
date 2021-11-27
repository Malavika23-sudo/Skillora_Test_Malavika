import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:malavika_machine_test/constants/color_constants.dart';
import 'package:malavika_machine_test/constants/style_constants.dart';

class SliderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<Widget> list = [
      RandomImages(
        height: height,
        width: width,
      ),
      RandomImages(
        height: height,
        width: width,
      ),
      RandomImages(
        height: height,
        width: width,
      ),
    ];
    return CarouselSlider(
        items: list
            .map((item) => Container(
                  child: item,
                ))
            .toList(),
        options: CarouselOptions(
            enlargeCenterPage: true, // enlarges the center image

            autoPlay: true, //slides authomatically
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn, // animation of sliding fasion
            enableInfiniteScroll: false, //[IMP]: make this false
            viewportFraction: 1,
            autoPlayAnimationDuration: Duration(milliseconds: 100)));
  }
}

class RandomImages extends StatelessWidget {
  RandomImages({
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: height * .4,
        width: width * .8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/photo1.jpg'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: [
                Text(
                  'House Boat',
                  style: optionStyle,
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Icon(
                    Icons.favorite,
                    color: textColor,
                  ),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.all(3.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(
                        color: textColor,
                      )),
                  child: Text(
                    'Rs 1601/Person',
                    style: titles,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0),
                  child: Text(
                    'District 1',
                    style: titles,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
