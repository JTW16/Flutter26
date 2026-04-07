import 'package:example/ui/pages/todo/bottom_navigation/widget/nav_botton.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      padding: .all(8),
      decoration: BoxDecoration(
        borderRadius: .circular(50),
        border: .all(color: Colors.grey[300]!),
      ),
      child: Row(
        children:
            [
                  (text: '홈', icon: Icons.home),
                  (text: '캘린더', icon: Icons.calendar_month),
                  (text: '통계', icon: Icons.bar_chart),
                  (text: '프로필', icon: Icons.person),
                ]
                .map(
                  (e) => Expanded(
                    child: NavBotton(
                      selected: e.text == '홈',
                      icon: e.icon,
                      text: e.text,
                    ),
                  ),
                )
                .toList(),
      ),
    );
  }
}
