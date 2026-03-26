import 'package:flutter/material.dart';

class FilterRow extends StatelessWidget {
  const FilterRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: .horizontal,
      child: Row(
        spacing: 8,
        children: [
          _buildfilter('전체', isSelected : true),
          _buildfilter('업무'),
          _buildfilter('개인'),
          _buildfilter('건강'),
        ],
      ),
    );
  }

  Widget _buildfilter(
    String text, {
    bool isSelected = false
  }) {
    return Container(
      padding: .symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        color: isSelected ? Colors.deepPurpleAccent : Colors.grey[300]!,
        borderRadius: .all(.circular(50)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: isSelected ? Colors.white : Colors.black,
          fontSize: 14,
          fontWeight: .w700,
        ),
      ),
    );
  }
}