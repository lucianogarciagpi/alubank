import 'package:flutter/material.dart';

class HeaderTest extends StatelessWidget {
  const HeaderTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[
            Color.fromRGBO(103, 99, 234, 1),
            Color.fromRGBO(155, 105, 254, 1),
            Color.fromRGBO(195, 107, 255, 1),
          ],
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 16,
          top: 80,
          right: 16,
          bottom: 16,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text.rich(
                  TextSpan(
                    text: '\$',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '1000.00',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Balanço disponível',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const Icon(
              Icons.account_circle,
              size: 42,
            ),
          ],
        ),
      ),
    );
  }
}
