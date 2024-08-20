import 'package:flutter/material.dart';

class SliderWidget extends StatelessWidget {
  SliderWidget({super.key, required this.onChanged, this.currentValue});

  final currentValue;
  final ValueChanged<double> onChanged;
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Slider(
        value: currentValue,
        onChanged: onChanged,
        min: 0,
        max: 100,
        activeColor: Color(0xff176B87),
        inactiveColor: Color(0xff64CCC5),
      ),
    );
  }
}
