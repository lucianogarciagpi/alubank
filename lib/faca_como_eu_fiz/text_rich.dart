import 'package:flutter/material.dart';

class TextRich extends StatelessWidget {
  const TextRich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text.rich(
          TextSpan(
              text: '"Oie ',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              children: <TextSpan>[
                TextSpan(
                  text: 'mundo ',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                  ),
                ),
                TextSpan(
                  text: 'flutter".',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
