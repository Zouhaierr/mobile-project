import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _isQuestionValid = false;
  bool get isQuestionValid => _isQuestionValid;
  set isQuestionValid(bool value) {
    _isQuestionValid = value;
  }

  bool _isAnswerValid = false;
  bool get isAnswerValid => _isAnswerValid;
  set isAnswerValid(bool value) {
    _isAnswerValid = value;
  }

  bool _isvalid = false;
  bool get isvalid => _isvalid;
  set isvalid(bool value) {
    _isvalid = value;
  }
}
