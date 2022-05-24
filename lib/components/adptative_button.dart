import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdptativeButton extends StatelessWidget {
  final String label;
  final void Function() onPressed;

  const AdptativeButton({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(label),
            onPressed: onPressed,
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
          )
        : ElevatedButton(
            child: Text(label),
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                primary: Theme.of(context).colorScheme.primary),
          );
  }
}
