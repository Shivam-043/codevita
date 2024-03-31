import 'package:codevita_codingjunior/MVVM/Views/problemTabs/description.dart';
import 'package:codevita_codingjunior/MVVM/Views/problemTabs/codeEditor.dart';
import 'package:codevita_codingjunior/MVVM/Views/problemTabs/solution.dart';
import 'package:codevita_codingjunior/MVVM/Views/problemTabs/submissions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../widgets/text/custom_text.dart';

class ProblemTabPage extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void changeIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  List<String> get tabs => [
    "Description",
    "Code Editor",
    "Solution",
    "Submissions",
  ];

  getScreen() {
    final tabs = [
      Center(
        child: Description(),
      ),
      Center(
        child: CodeEditor(),
      ),
      Center(
        child: Solution(),
      ),
      Center(
        child: Submissions(),
      ),
    ];

    return tabs[_currentIndex];
  }
}