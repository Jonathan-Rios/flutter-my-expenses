import 'package:flutter/material.dart';

class TransactionEmpty extends StatelessWidget {
  const TransactionEmpty({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) {
        return Column(
          children: <Widget>[
            const SizedBox(height: 20),
            Text(
              'Nenhuma transação cadastrada!',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: constraints.maxHeight * 0.6,
              child: Image.asset(
                'assets/images/waiting.png',
                fit: BoxFit.cover,
              ),
            )
          ],
        );
      },
    );
  }
}
