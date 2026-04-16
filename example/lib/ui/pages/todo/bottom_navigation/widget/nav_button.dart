import 'package:example/enum/process.dart';
import 'package:flutter/material.dart';

class NavButton extends StatelessWidget {
  final bool selected;
  final IconData icon;
  final String text;

  const NavButton({
    super.key,
    this.selected = false,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .symmetric(vertical: 6),
      decoration: BoxDecoration(
        color: selected ? Process.done.primaryColor : null,
        borderRadius: .circular(50),
      ),
      child: Column(
        mainAxisAlignment: .center,
        mainAxisSize: .min,
        spacing: 4,
        children: [
          Icon(icon, color: selected ? Colors.white : Colors.grey, size: 24),
          Text(
            text,
            style: TextStyle(
              color: selected ? Colors.white : Colors.grey,
              fontSize: 12,
              fontWeight: selected ? .w600 : .normal,
            ),
          ),
        ],
      ),
    );
  }
}
