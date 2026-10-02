import 'package:flutter/material.dart';

class RatingBox extends StatelessWidget {
  final ValueNotifier<int> rating;
  final double size;

  const RatingBox({super.key, required this.rating, this.size = 20});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: rating,
      builder: (context, value, _) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (i) {
            final star = i + 1;
            return GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => rating.value = value == star ? star - 1 : star,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size / 2, vertical: 2),
                child: Icon(
                  value >= star ? Icons.star : Icons.star_border,
                  size: size,
                  color: Colors.red[500],
                ),
              ),
            );
          }),
        );
      },
    );
  }
}