import 'package:flutter/material.dart';
import 'package:malavika_machine_test/components/boat_category.dart';
import 'package:malavika_machine_test/components/boat_images.dart';
import 'package:malavika_machine_test/components/category_general.dart';
import 'package:malavika_machine_test/components/category_select_button.dart';
import 'package:malavika_machine_test/components/cerousel_images.dart';
import 'package:malavika_machine_test/components/nearby_selector.dart';
import 'package:malavika_machine_test/constants/style_constants.dart';


class Body extends StatelessWidget {
  final double height;
  final double width;

  Body({
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(left: 20),
        height: height * 3,
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 50),
              child: FirstSelector(height: height, width: width),
            ),
            TestSliderImage(),
            // Center(
            //   child: Padding(
            //     padding: const EdgeInsets.only(right: 10.0),
            //     child: SingleChildScrollView(
            //       scrollDirection: Axis.horizontal,
            //       child: Row(
            //         children: [
            //           RandomImages(
            //             height: height,
            //             width: width,
            //           ),
            //           RandomImages(
            //             height: height,
            //             width: width,
            //           ),
            //           RandomImages(
            //             height: height,
            //             width: width,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 20),
              child: Text(
                'Choose your boat Category',
                style: titles,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 20),
              child: BoatSelector(width: width),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  BoatImages(
                    height: height,
                    width: width,
                    text1: 'Spice boat Cruises',
                    text2: 'Rs 1935/Person',
                    text3: 'Phu Nhuan',
                  ),
                  BoatImages(
                    height: height,
                    width: width,
                    text1: 'Spice boat Cruises',
                    text2: 'Rs 1935/Person',
                    text3: 'Phu Nhuan',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, top: 20),
              child: Text(
                'Near to you',
                style: titles,
              ),
            ),
            NaerBy(),
            CategoryResort(
              height: height,
              width: width,
              text1: 'Charming House Boat',
              text2: 'Rs 1234/Person',
              text3: '1.2 km',
            ),
            CategoryResort(
              height: height,
              width: width,
              text1: 'KeyaKing House Boat',
              text2: 'Rs 5677/Person',
              text3: '2 hr 30 min',
            ),
          ],
        ),
      ),
    );
  }
}
