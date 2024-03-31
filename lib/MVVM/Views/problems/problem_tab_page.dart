import 'package:codevita_codingjunior/MVVM/viewModels/code/codeSaver.dart';
import 'package:codevita_codingjunior/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../viewModels/navigationBar/problem_page_navigation.dart';

class ProblemDescription extends StatefulWidget {
  const ProblemDescription({super.key});

  @override
  State<ProblemDescription> createState() => _ProblemDescriptionState();
}

class _ProblemDescriptionState extends State<ProblemDescription> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProblemTabPage>(builder: (context , data , child){
    var codeSaver = context.read<CodeSaver>();
      return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title:CustomText(
              text: data.tabs[data.currentIndex],
              fontSize: 20,
              color: Colors.white,),
            actions: [
              //add the context.read<CodeSaver>().controllers values in dropdown
              if(data.currentIndex == 1) Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton(
                  dropdownColor: Colors.black,
                  value: codeSaver.selectedController,
                  items: codeSaver.controllers.map((e) => DropdownMenuItem(
                    value: e,
                    child: CustomText(
                      text: e,
                      color: Colors.white,
                    ),
                  )).toList(),
                  onChanged: (value) {
                    codeSaver.selectedController = value.toString();
                    setState(() {

                    });
                  },
                ),
              ),
            ],
          ),
          body: data.getScreen(),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) async {
            data.changeIndex(index);
          },
          type: BottomNavigationBarType.fixed,
          unselectedItemColor:Colors.white,
          unselectedFontSize: 13.0.sp,
          selectedItemColor:Colors.orangeAccent,
          selectedFontSize: 13.0.sp,
          unselectedLabelStyle:
          Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 13.sp,
            color:Colors.white,
          ),
          selectedLabelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 13.sp,
            color: Colors.orangeAccent,
          ),
          currentIndex: data.currentIndex,
          items: [
            BottomNavigationBarItem(
              backgroundColor: Theme.of(context).colorScheme.primary,
              icon: const Icon(Icons.description),
              label: "Description",
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.code),
              label: "Code Editor",
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.design_services_sharp),
              label: "Solution",
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            BottomNavigationBarItem(
              icon: const Icon(Icons.send_and_archive_sharp),
              label: "Submission",
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      );
    },);
  }
}
