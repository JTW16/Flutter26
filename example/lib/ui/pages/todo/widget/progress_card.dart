import 'package:flutter/material.dart';

class ProgressCard extends StatelessWidget {
  const ProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(24),
      decoration: BoxDecoration(
        color: Color(0xFF8B5CF6),
        borderRadius: .all(.circular(24)),
      ),
      child: Column(
        spacing: 15,
        crossAxisAlignment: .start,
        children: [
          //오늘의 진행률 텍스트
          DefaultTextStyle(
            style: TextStyle(
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text('오늘의 진행률',
                  style: TextStyle(
                    fontWeight: .w700,
                    fontSize: 16,
                  ),
                ),
                Text('60%',
                  style: TextStyle(
                    fontWeight: .bold,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          
          // 프로그레스 바
          SizedBox(
            height: 8,
            child: LinearProgressIndicator(
              value: 0.6,
              borderRadius: .circular(10),
              year2023: false,
              color: Colors.white,
              backgroundColor:Colors.white.withValues(
                alpha: 0.2,
              ),
            ),
          ),

          //완료 텍스트
          Text(
            '10개 중 6개 완료', 
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.6),
            ),
          ),
        ],
      ),
    );
  }
}