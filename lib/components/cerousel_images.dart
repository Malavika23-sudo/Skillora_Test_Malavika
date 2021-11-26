import 'package:flutter/material.dart';
import 'package:malavika_machine_test/constants/color_constants.dart';
import 'package:malavika_machine_test/constants/style_constants.dart';
import 'package:carousel_slider/carousel_slider.dart';

class RandomImages extends StatelessWidget {
  RandomImages({
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return
        // ClipRRect(
        //   borderRadius: BorderRadius.circular(10),
        //   child: Align(
        //     alignment: Alignment.topCenter,
        //     heightFactor: 0.5,
        //child:
        Center(
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
        //   ),
        // ),
      ),
    );
  }
}

class ImageSlider extends StatelessWidget {
  List<Widget> Images = [
    RandomImages(
      height: 100,
      width: 100,
    ),
    RandomImages(
      height: 100,
      width: 100,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(),
      items: Images.map((e) => Container(
            height: 10000,
            width: double.infinity,
            child: Center(
              child: RandomImages(
                height: 100,
                width: 100,
              ),
            ),
            color: null,
          )).toList(),
    ));
  }
}
