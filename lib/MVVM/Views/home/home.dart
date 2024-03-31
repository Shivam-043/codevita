import 'package:codevita_codingjunior/widgets/spacing/spacing.dart';
import 'package:codevita_codingjunior/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../problems/multiple_problems.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: const Icon(Icons.person, color: Colors.white),
        title: Text("</Code Vita>" , style: GoogleFonts.jetBrainsMono(fontSize: 20 , color: Colors.white ,),),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 30),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white , width: 0.5),
          borderRadius: BorderRadius.circular(50),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  CustomText(text: "Welcome to Code Vita !", fontSize: 25, color: Colors.white ),
                ],
              ),
              10.verticalSpace,
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 35.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white , width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "7", fontSize: 40, color: Colors.white),
                            CustomText(text: "Practice Problem", fontSize: 20, color: Colors.white),
                          ],
                        ),
                      ),
                      10.horizontalSpace,
                      Container(
                        width: 50.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white , width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "16", fontSize: 30, color: Colors.white),
                            CustomText(text: "Review Solutions", fontSize: 20, color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                  10.verticalSpace,
                  Row(
                    children: [
                      Container(
                        width: 45.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white , width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "3", fontSize: 40, color: Colors.white),
                            CustomText(text: "Coding Challanges", fontSize: 15, color: Colors.white),
                          ],
                        ),
                      ),
                      10.horizontalSpace,
                      Container(
                        width: 40.w,
                        height: 20.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white , width: 0.5),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "1", fontSize: 40, color: Colors.white),
                            CustomText(text: "Texts\nNotifications", fontSize: 15, color: Colors.white),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              30.verticalSpace,
              Row(
                children: [
                  CustomText(text: "Today's Task", fontSize: 25, color: Colors.white ),
                ],
              ),
              30.verticalSpace,
              Container(
                width: 90.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white , width: 0.5),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => ProblemsViewer()));
                                },
                                child: Container(
                                  width: 20.w,
                                  height: 20.sp,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    color: Colors.green,
                                  ),
                                  alignment: Alignment.center,
                                  child: CustomText(text: "Solve", fontSize: 18, color: Colors.black , fontWeight: FontWeight.w400,),
                                ),
                              ),
                              Container(
                                width: 40.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.code_off_rounded , color: Colors.white,),
                                    CustomText(text: "Problems", fontSize: 15, color: Colors.white),
                                  ],
                                ),
                              )
                            ],
                          ),
                          20.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  CustomText(
                                    text: "ALGORITHMS",
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  5.verticalSpace,
                                  CustomText(
                                    text: "10:00 - 12:00",
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              Icon(Icons.notifications_active_rounded , color: Colors.white,),
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                      child: Divider(
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(30.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 20.w,
                                height: 20.sp,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.green,
                                ),
                                alignment: Alignment.center,
                                child: CustomText(text: "Solve", fontSize: 18, color: Colors.black , fontWeight: FontWeight.w400,),
                              ),
                              Container(
                                width: 40.w,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(Icons.map_outlined , color: Colors.white,),
                                    CustomText(text: "Coding Arena", fontSize: 15, color: Colors.white),
                                  ],
                                ),
                              )
                            ],
                          ),
                          20.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "CODE PRACTICE",
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  5.verticalSpace,
                                  CustomText(
                                    text: "15:00 - 17:30",
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ],
                              ),
                              Icon(Icons.notifications_active_rounded , color: Colors.white,),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
          
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}