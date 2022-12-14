import 'package:flutter/material.dart';

class BoxCard extends StatelessWidget {
  final Widget boxContent;

  const BoxCard({
    Key? key,
    required this.boxContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Ink(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: kElevationToShadow[3],
        borderRadius: BorderRadius.circular(10)
      ),
      child: boxContent,
    );
  }
}
