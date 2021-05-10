import 'package:flutter/material.dart';

class NoStateWidget extends StatelessWidget {
  final String name;

  final int number;

  const NoStateWidget({
    Key key,
    this.name,
    this.number,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            "The property i passed in this component is $name the incremented number is $number",
          ),
        ],
      ),
    );
  }
}
