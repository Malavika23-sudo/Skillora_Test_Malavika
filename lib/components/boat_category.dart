import 'package:flutter/material.dart';
import 'package:malavika_machine_test/components/category_select_button.dart';

class BoatSelector extends StatelessWidget {
  const BoatSelector({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        width: width * 1.5,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: CategoryBoat(
                text: 'House\n Boat',img: '1',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: CategoryBoat(text: 'Rental\n Boat',img: '2'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: CategoryBoat(text: 'A/C\n Boat',img: '3'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: CategoryBoat(text: 'Non AC\n Boat',img: '1'),
            ),
          ],
        ),
      ),
    );
  }
}
