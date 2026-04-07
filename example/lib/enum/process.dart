import 'package:flutter/material.dart';

enum Process { todo, doing, done }

extension ProcessExtension on Process {
  Color get primaryColor => switch (this) {
    .todo => Color(0xFFF472B6),
    .doing => Color(0xFF14B8A6),
    .done => Color(0xFF8B5CF6),
  };

  Color get secondaryColor => switch (this) {
    .todo => Color(0x20f472b6),
    .doing => Color(0x2014B8A6),
    .done => Color(0x208b5cf6),
  };

  String get title => switch (this) {
    .todo => '예정',
    .doing => '진행중',
    .done => '완료',
  };
}
