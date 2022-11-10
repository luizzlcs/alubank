import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class PointsAccount extends StatelessWidget {
  const PointsAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 4,
              bottom: 10,
              top: 14,
            ),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
         const BoxCard(boxContent: _PointsAccountContent())
        ],
      ),
    );
  }
}

class _PointsAccountContent extends StatelessWidget {
  const _PointsAccountContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8, top: 8),
          child: Text(
            'Pontos totais:',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            '3000',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: Text(
            'Objetivos:',
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          children: [
            ColorDot(color: ThemeColors.recentActivit['income']),
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 2.0, left: 4.0),
              child: Text('Entrega grátis: 15000pts'),
            ),
          ],
        ),
        Row(
          children: [
            ColorDot(color: ThemeColors.recentActivit['month']),
            Padding(
              padding: const EdgeInsets.only(top: 7.0, bottom: 2.0, left: 4.0),
              child: Text('1 mês de streaming: 30000pts'),
            )
          ],
        )
      ],
    );
  }
}
