import 'package:flutter/foundation.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:highlight/languages/java.dart';
import 'package:highlight/languages/python.dart';
import 'package:highlight/languages/cpp.dart';

class CodeSaver extends ChangeNotifier {
  final javaController = CodeController(
    text: '''
class CodeVita.twoSum {
    public static void main(String[] args) {
        //write your code here!
    }
}
''', // Initial code
    language: java,
  );

  final pythonController = CodeController(
    text: '''
def twoSum(nums, target):
    #write your code here!
''', // Initial code
    language: python,
  );

  final cppController = CodeController(
    text: '''
#include <iostream>
using namespace std;

int main() {
    //write your code here!
    return 0;
}
''', // Initial code
    language: cpp,
  );

  List<String> controllers = [
    "Java",
    "Python",
    "C++",
  ];

  String _selectedController = "Java";

  String get selectedController => _selectedController;

  set selectedController(String value) {
    _selectedController = value;
    notifyListeners();
  }

  CodeController getController(String text){
    switch(text){
      case "Java":
        return javaController;
      case "Python":
        return pythonController;
      case "C++":
        return cppController;
      default:
        return javaController;
    }
  }

  // getCode(String text){
  //   switch(text){
  //     case java.:
  //       return controller.text;
  //     default:
  //       return controller.text;
  //   }
  // }

  String _code = "";

  String get code => _code;

  void saveCode(String code) {
    _code = code;
    notifyListeners();
  }

  void clearCode() {
    _code = "";
    notifyListeners();
  }
}