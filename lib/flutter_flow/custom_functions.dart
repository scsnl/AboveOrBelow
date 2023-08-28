import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';

double? getTimeDifference(
  DateTime? questionStart,
  DateTime? questionFinish,
) {
  // return the difference between two inputted date times
  if (questionStart == null || questionFinish == null) {
    return null;
  }
  return questionFinish.difference(questionStart).inMilliseconds.toDouble();
}

int getCorrectVal(ProblemStruct problem) {
  int answer = 0;
  List<int> entries = [
    problem.num1,
    problem.num2,
    problem.num3,
    problem.num4,
    problem.num5
  ];
  if (problem.questionIsBelow) {
    for (int i = 0; i < entries.length; i++) {
      if (entries[i] < problem.targetNum && entries[i] != 0) {
        answer = entries[i];
      }
    }
  } else {
    for (int i = 0; i < entries.length; i++) {
      if (entries[i] > problem.targetNum && entries[i] != 0) {
        answer = entries[i];
      }
    }
  }
  return answer;
}

String generateIncorrectFeedbackText(int correctVal) {
  return "Oops! Not quite. The correct answer is ${correctVal}. Tap this speech bubble to continue.";
}

int subtractOne(int value) {
  return value - 1;
}

int addOne(int value) {
  return value + 1;
}

double getAccurcay(
  int val1,
  int val2,
) {
  return val1 / val2;
}

String convertSymbolicToDotNum(bool isSymbolic) {
  if (isSymbolic) {
    return "num";
  } else {
    return "dot";
  }
}

String convertValueToTwoDigit(int num) {
  if (num < 10) {
    return "0" + num.toString();
  } else {
    return num.toString();
  }
}
