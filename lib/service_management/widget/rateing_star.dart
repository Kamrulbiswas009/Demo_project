

import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../controller/rateing_controller.dart';
import 'package:flutter/material.dart';

class Rateing_Star extends StatelessWidget {
  const Rateing_Star({
    super.key,
    required this.controller,
  });

  final RatingController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Padding(
        padding: const EdgeInsets.only(left: 18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(5, (index) {
            int starIndex = index + 1;
            bool filled = controller.rating.value >= starIndex;
            return GestureDetector(
              onTap: () {

              },
              child: SvgPicture.asset(
                'assets/icon/Star.svg',
                width: 30,
                height: 30,
              ),
            );
          }),
        ),
      );
    });
  }
}

