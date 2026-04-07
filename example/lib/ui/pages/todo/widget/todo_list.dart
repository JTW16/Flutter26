import 'package:example/enum/process.dart';
import 'package:example/ui/pages/todo/widget/circle_check_box.dart';
import 'package:example/ui/pages/todo/widget/process_badge.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    final dummy = [
      (
        title: '운동하기',
        filter: '건강',
        time: DateTime.now(),
        process: Process.done,
      ),
      (
        title: '저녁식사',
        filter: '건강',
        time: DateTime.now(),
        process: Process.todo,
      ),
      (
        title: '대학교 수업',
        filter: '공부',
        time: DateTime.now(),
        process: Process.doing,
      ),
    ];

    return ListView.separated(
      itemCount: dummy.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => SizedBox(height: 12),
      itemBuilder: (context, index) {
        final data = dummy[index];

        return Container(
          padding: .symmetric(vertical: 18, horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.grey[200]!,
            borderRadius: .circular(20),
          ),
          child: Row(
            spacing: 12,
            children: [
              //체크박스
              CircleCheckBox(value: data.process == .done),

              //할일 텍스트
              Expanded(
                child: Column(
                  crossAxisAlignment: .start,
                  children: [
                    Text(
                      data.title,
                      style: TextStyle(fontSize: 16, fontWeight: .w600),
                    ),
                    Text(
                      '${data.filter} · ${DateFormat('HH:mm').format(data.time)}',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),

              //진행 뱃지
              ProcessBadge(process: data.process),
            ],
          ),
        );
      },
    );
  }
}
