import 'package:codevita_codingjunior/widgets/spacing/spacing.dart';
import 'package:codevita_codingjunior/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';

class Submissions extends StatefulWidget {
  const Submissions({super.key});

  @override
  State<Submissions> createState() => _SubmissionsState();
}

class _SubmissionsState extends State<Submissions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
        child: ListView.builder(itemBuilder: (context , index){
          return Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CustomText(text: "Accepted", fontSize: 15 , color: Colors.green),
                    10.verticalSpace,
                    CustomText(text: "Aug 06,2022", fontSize: 12 , color: Colors.white),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                  color: Colors.grey,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: CustomText(text: "Java", fontSize: 14 , color: Colors.white),
                ),
                Row(
                  children: [
                    Icon(Icons.timer , color: Colors.white,),
                    5.horizontalSpace,
                    CustomText(text: "91 ms", fontSize: 12 , color: Colors.white),
                  ],
                )
              ],
            )
          );
        })
      ),
    );
  }
}
