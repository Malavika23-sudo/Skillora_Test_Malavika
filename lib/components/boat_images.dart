import 'package:flutter/material.dart';
import 'package:malavika_machine_test/constants/color_constants.dart';
import 'package:malavika_machine_test/constants/style_constants.dart';


class BoatImages extends StatelessWidget {
  final double height;
  final double width;
  String? text1;
  String? text2;
  String? text3;
  BoatImages(
      {required this.height,
      required this.width,
      this.text1,
      this.text2,
      this.text3});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          height: height * .4,
          width: width * .75,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Container(
                height: height * .2,
                width: width * .5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/photo2.jpg'))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 120.0, bottom: 100),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      text1.toString(),
                      style: titlesMedium,
                    ),
                  ),
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
                      text2.toString(),
                      style: titlesmall,
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      text3.toString(),
                      style: titlesmall,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Icon(
                      Icons.bedroom_child,
                      color: Colors.white,
                    ),
                  ),
                  Text('1'),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(
                    Icons.bathtub_outlined,
                    color: Colors.white,
                  ),
                  Text('1'),
                  SizedBox(
                    width: 60,
                  ),
                  Icon(Icons.star, color: Colors.amber),
                  Text('5.5'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
