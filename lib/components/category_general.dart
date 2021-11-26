import 'package:flutter/material.dart';
import 'package:malavika_machine_test/components/category_select_button.dart';
import 'package:malavika_machine_test/constants/color_constants.dart';

enum Category { all, dayc, nightc }

class FirstSelector extends StatefulWidget {
  FirstSelector({
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  State<FirstSelector> createState() => _FirstSelectorState();
}

class _FirstSelectorState extends State<FirstSelector> {
  Category category = Category.all;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(right: 20),
        height: widget.height * .054,
        width: widget.width * .7759,
        decoration: BoxDecoration(
            color: menuButtonColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Row(
          children: [
            CategorySelector(
              onTap: () {
                setState(() {
                  category = Category.all;
                });
              },
              title: 'All',
              buttonColor: category == Category.all
                  ? menuButtonActiveColor
                  : menuButtonColor,
            ),
            CategorySelector(
              onTap: () {
                setState(() {
                  category = Category.dayc;
                });
              },
              title: 'Day Cruise',
              buttonColor: category == Category.dayc
                  ? menuButtonActiveColor
                  : menuButtonColor,
            ),
            CategorySelector(
              onTap: () {
                setState(() {
                  category = Category.nightc;
                });
              },
              title: 'Night Cruise',
              buttonColor: category == Category.nightc
                  ? menuButtonActiveColor
                  : menuButtonColor,
            ),
          ],
        ),
      ),
    );
  }
}
