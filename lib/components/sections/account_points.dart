import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class AccountPoints extends StatelessWidget {
  const AccountPoints({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        top: 32,
        right: 16.0,
        bottom: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Text('Pontos da conta',
                style: Theme.of(context).textTheme.titleMedium),
          ),
          const BoxCard(
            boxContent: _AccountPointsContent(),
          )
        ],
      ),
    );
  }
}

class _AccountPointsContent extends StatelessWidget {
  const _AccountPointsContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Pontos totais:'),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        const ContentDivision(),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Text(
            'Objetivos:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          children: [
            ColorDot(
              color: ThemeColors.accountPoints['delivery'],
            ),
            const Text('Entrega grátis: 15000pts'),
          ],
        ),
        Row(
          children: [
            ColorDot(
              color: ThemeColors.accountPoints['streaming'],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Text('1 mês de streaming: 30000pts'),
            ),
          ],
        ),
      ],
    );
  }
}
