import 'package:codevita_codingjunior/MVVM/viewModels/code/codeSaver.dart';
import 'package:codevita_codingjunior/widgets/spacing/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CodeEditor extends StatefulWidget {
  const CodeEditor({super.key});

  @override
  State<CodeEditor> createState() => _CodeEditorState();
}

class _CodeEditorState extends State<CodeEditor> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // controller.foldImports();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<CodeSaver>(builder: (context , codeData , child){
      return Scaffold(
        body: CodeTheme(
            data: CodeThemeData(styles: monokaiSublimeTheme),
            child: SingleChildScrollView(
              child: CodeField(
                controller: codeData.getController(codeData.selectedController),
                textStyle: GoogleFonts.jetBrainsMono(),
                wrap: true,
                enabled: true,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
              ),
            )
        ),

        //adding the submit and run button in bottom navigation bar
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  // color: Colors.orangeAccent,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.orangeAccent , width: 2),
                ),
                child: Row(
                  children: [
                    Icon(Icons.play_arrow, color: Colors.white),
                    10.horizontalSpace,
                    const Text(
                      "Run",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.send, color: Colors.white),
                    10.horizontalSpace,
                    const Text(
                      "Submit",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    },);

  }
}
