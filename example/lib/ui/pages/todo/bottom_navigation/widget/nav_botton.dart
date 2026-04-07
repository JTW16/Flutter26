import 'package:example/enum/process.dart';
import 'package:flutter/material.dart';

class NavBotton extends StatelessWidget {
  final bool selected;
  final IconData icon;
  final String text;

  const NavBotton({
    super.key,
    this.selected = false,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selected ? Process.done.primaryColor : null,
        borderRadius: .circular(50),
      ),
    );
  }
}
