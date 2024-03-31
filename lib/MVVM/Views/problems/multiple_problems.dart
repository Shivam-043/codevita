import 'package:codevita_codingjunior/MVVM/Views/problems/problem_tab_page.dart';
import 'package:codevita_codingjunior/widgets/spacing/spacing.dart';
import 'package:codevita_codingjunior/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProblemsViewer extends StatefulWidget {
  const ProblemsViewer({super.key});

  @override
  State<ProblemsViewer> createState() => _ProblemsViewerState();
}

class _ProblemsViewerState extends State<ProblemsViewer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios , color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: CustomText(text: "ALGORITHMS", fontSize: 20 , color: Colors.white),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: ListView.builder(
          itemCount: 10,
            itemBuilder: (context , index){
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProblemDescription() ));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.center,
                width: 90.w,
                height: 10.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    10.horizontalSpace,
                    Icon(Icons.calendar_today_outlined , color: Colors.white,),
                    20.horizontalSpace,
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 5),
                            width: 70.w,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(text: "1. Two Sum", fontSize: 20, color: Colors.white),
                                Container(
                                    alignment: Alignment.center,
                                    width: 15.w,
                                    height: 3.h,
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(100),
                                    ),
                                    child: CustomText(text: "Easy", fontSize: 15, color: Colors.white)),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_circle_up_rounded , color: Colors.orangeAccent,size: 20,),
                                  5.horizontalSpace,
                                  CustomText(text: "1342", fontSize: 12, color: Colors.white),
                                ],
                              ),
                              10.horizontalSpace,
                              CustomText(text: "Avg Time: 30 Min", fontSize: 12, color: Colors.white),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                )
            ),
          );
        })
      ),
    );
  }
}
