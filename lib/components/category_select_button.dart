import 'package:flutter/material.dart';
import 'package:malavika_machine_test/components/resort_image_container.dart';
import 'package:malavika_machine_test/components/test.dart';
import 'package:malavika_machine_test/constants/color_constants.dart';
import 'package:malavika_machine_test/constants/style_constants.dart';

class CategorySelector extends StatelessWidget {
  Color? buttonColor;
  String? title;
  final Function()? onTap;
  CategorySelector({this.buttonColor, this.title, this.onTap});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(child: Text(title.toString())),
        height: height * .05,
        width: width * .24,
        decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}

class CategoryBoat extends StatelessWidget {
  String? text;
  String? img;
  CategoryBoat({this.img, this.text});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height * .1,
      width: width * .3,
      decoration: BoxDecoration(
          color: menuButtonColor,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                    // decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.all(Radius.circular(15))),
                    height: 40,
                    width: 40,
                    child: Image.asset('assets/images/photo$img.jpg')),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              text.toString(),
              style: titlesmall,
            ),
          )
        ],
      ),
    );
  }
}

class CategoryNearPlace extends StatelessWidget {
  final Function()? onTap;
  Color? color;
  String? title;
  CategoryNearPlace({this.onTap, this.color, this.title});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          child: Center(
            child: Text(
              title.toString(),
              style: titles,
            ),
          ),
          height: height * .05,
          width: width * .25,
          decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
      ),
    );
  }
}

class CategoryResort extends StatelessWidget {
  final double height;
  final double width;
  String? text1;
  String? text2;
  String? text3;
  CategoryResort(
      {required this.height,
      required this.width,
      this.text1,
      this.text2,
      this.text3});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0, top: 10),
      child: Container(
        height: height * .2,
        width: width * .85,
        child: ResortImage(
          height: height,
          width: width,
          text1: text1,
          text2: text2,
          text3: text3,
        ),
        decoration: BoxDecoration(
            color: menuButtonColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
      ),
    );
  }
}
