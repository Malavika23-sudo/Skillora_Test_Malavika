import 'package:flutter/material.dart';
import 'package:malavika_machine_test/components/category_select_button.dart';
import 'package:malavika_machine_test/constants/color_constants.dart';

enum NearPlace { apalley, paravoor }

class NaerBy extends StatefulWidget {
  @override
  State<NaerBy> createState() => _NaerByState();
}

class _NaerByState extends State<NaerBy> {
  NearPlace nearcategory = NearPlace.apalley;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0, top: 20),
      child: Row(
        children: [
          CategoryNearPlace(
            onTap: () {
              setState(() {
                nearcategory = NearPlace.apalley;
              });
            },
            color: nearcategory == NearPlace.apalley
                ? menuButtonActiveColor
                : menuButtonColor,
            title: 'Alappey',
          ),
          CategoryNearPlace(
            onTap: () {
              setState(() {
                nearcategory = NearPlace.paravoor;
              });
            },
            title: 'Paravoor',
            color: nearcategory == NearPlace.paravoor
                ? menuButtonActiveColor
                : menuButtonColor,
          ),
        ],
      ),
    );
  }
}
