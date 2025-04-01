import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MoneySlider extends StatelessWidget {
  final double value;
  final ValueChanged<double> onChanged;

  const MoneySlider({super.key, required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
        activeTrackColor: const Color(0xFFEF45B1),
        inactiveTrackColor: Colors.white,
        thumbColor: const Color(0xFFF046B1),
        valueIndicatorColor: const Color(0xFFF046B1),
        valueIndicatorTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w600,
        ),
        trackHeight: 5.0,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 12.0),
      ),
      child: Tooltip(
        message: 'Slide to filter by money spend each month.',
        child: Slider(
          value: value,
          min: 0,
          max: 800,
          divisions: 16,
          label: value >= 800
              ? '\$750+'
              : (value == 0 ? 'No Minimum' : '\$${value.toInt()}'),
          onChanged: (newValue) {
            HapticFeedback.mediumImpact();
            onChanged(newValue);
          },
        ),
      ),
    );
  }
}