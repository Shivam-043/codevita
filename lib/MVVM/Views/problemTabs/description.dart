import 'package:codevita_codingjunior/widgets/spacing/spacing.dart';
import 'package:codevita_codingjunior/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Description extends StatefulWidget {
  const Description({super.key});

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.code_off , color: Colors.white,),
                      10.horizontalSpace,
                      CustomText(text: "Two Sum", fontSize: 20 , color: Colors.white , fontWeight: FontWeight.bold,),
                    ],
                  ),
                  Icon(Icons.share , color: Colors.white,),
                ],
              ),
              20.verticalSpace,
              Row(
                children: [
                  CustomText(text: "Easy", fontSize: 12 , color: Colors.green),
                  10.horizontalSpace,
                  Row(
                    children: [
                      Icon(Icons.light_mode_rounded , color: Colors.orangeAccent,),
                      5.horizontalSpace,
                      CustomText(text: "0/40", fontSize: 12 , color: Colors.white , fontWeight: FontWeight.bold,),
                    ],
                  ),
                  20.horizontalSpace,
                  Row(
                    children: [
                      Icon(Icons.thumb_up_alt_outlined , color: Colors.grey,),
                      5.horizontalSpace,
                      CustomText(text: "55.6K", fontSize: 12 , color: Colors.white),
                    ],
                  ),
                  20.horizontalSpace,
                  Row(
                    children: [
                      Icon(Icons.thumb_down_alt_outlined , color: Colors.grey,),
                      5.horizontalSpace,
                      CustomText(text: "10.6K", fontSize: 12 , color: Colors.white),
                    ],
                  ),
                ],
              ),
              20.verticalSpace,
              CustomText(text: "Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.\n \nYou may assume that each input would have exactly one solution, and you may not use the same element twice.\n \nYou can return the answer in any order.", fontSize: 15 , color: Colors.white),
              20.verticalSpace,
              Row(
                children: [
                  CustomText(text: "Constraints:-", fontSize: 15 , color: Colors.white , fontWeight: FontWeight.bold,),
                ],
              ),
              20.verticalSpace,
              CustomText(text: "2 <= nums.length <= 10^4\n-10^9 <= nums[i] <= 10^9\n-10^9 <= target <= 10^9\nOnly one valid answer exists.", fontSize: 15 , color: Colors.white),
              20.verticalSpace,
              Row(
                children: [
                  CustomText(text: "Example:-", fontSize: 15 , color: Colors.white , fontWeight: FontWeight.bold,),
                ],
              ),
              20.verticalSpace,
              CustomText(text: "Input: nums = [2,7,11,15], target = 9\nOutput: [0,1]\nOutput: Because nums[0] + nums[1] == 9, we return [0, 1].", fontSize: 15 , color: Colors.white),
              20.verticalSpace,
              Row(
                children: [
                  CustomText(text: "Explanation:-", fontSize: 15 , color: Colors.white , fontWeight: FontWeight.bold,),
                ],
              ),
              20.verticalSpace,
              CustomText(text: "The explanation is given in the example itself.", fontSize: 15 , color: Colors.white),
              20.verticalSpace,
              Row(
                children: [
                  CustomText(text: "Note:-", fontSize: 15 , color: Colors.white , fontWeight: FontWeight.bold,),
                ],
              ),
              20.verticalSpace,
              CustomText(text: "The answer is guaranteed to be unique. You may return the answer in any order.", fontSize: 15 , color: Colors.white),
              20.verticalSpace,
              Row(
                children: [
                  CustomText(text: "Tags:-", fontSize: 15 , color: Colors.white , fontWeight: FontWeight.bold,),
                ],
              ),
              20.verticalSpace,
              Row(
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 3.h,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CustomText(text: "Array", fontSize: 15, color: Colors.white),
                  ),
                  10.horizontalSpace,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.center,
                    // width: 15.w,
                    height: 3.h,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: CustomText(text: "Hash Table", fontSize: 15, color: Colors.white),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
