import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/components/themes/my_theme.dart';
import 'package:alubank/components/themes/theme_colors.dart';
import 'package:flutter/material.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: ColorDot(
                color: ThemeColors.recentActivit['spent'],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Saída', style: Theme.of(context).textTheme.bodyMedium),
                RichText(
                  text: TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                          text: '\$',
                          style: Theme.of(context).textTheme.bodyMedium),
                      TextSpan(
                          text: '9900.97',
                          style: Theme.of(context).textTheme.bodyLarge)
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 4),
              child: ColorDot(color: ThemeColors.recentActivit['income']),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Entrada', style: Theme.of(context).textTheme.bodyMedium),
                RichText(
                  text: TextSpan(
                    children: <InlineSpan>[
                      TextSpan(
                        text: '\$',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: '9323.35',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
          child: Text(
            'Limite de gastos: \$432.93',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration:
              BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5))),
          child: const LinearProgressIndicator(
            minHeight: 8.0,
            value: 0.5,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 8.0, bottom: 8),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 16),
          child: Text(
              'Esse mês você gastou \$1500.00 com \njogos. Tente baixar esse custo.'),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Diga-me como',
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Raleway',
            ),
          ),
        ),
      ],
    );
  }
}
