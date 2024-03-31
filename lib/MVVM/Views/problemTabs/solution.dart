import 'package:codevita_codingjunior/widgets/spacing/spacing.dart';
import 'package:codevita_codingjunior/widgets/text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_code_editor/flutter_code_editor.dart';
import 'package:google_fonts/google_fonts.dart';

class Solution extends StatefulWidget {
  const Solution({super.key});

  @override
  State<Solution> createState() => _SolutionState();
}

class _SolutionState extends State<Solution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomText(
                text: "Solution Article : Two Sum",
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              20.verticalSpace,
              SizedBox(
                child: Divider(
                  color: Colors.white,
                ),
              ),
              20.verticalSpace,
              CustomText(
                text: "Approach 1 : Brute Force",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "The brute force approach is simple. Loop through each element x and find if there is another value that equals to target - x.",
                fontSize: 15,
                color: Colors.white,
              ),
              20.verticalSpace,
              CustomText(
                text: "Implementation",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 40, bottom: 10),
                    child: SelectableText(
                      "class Solution {\n  public int[] twoSum(int[] nums, int target) {\n    for (int i = 0; i < nums.length; i++) {\n      for (int j = i + 1; j < nums.length; j++) {\n        if (nums[j] == target - nums[i]) {\n          return new int[] { i, j };\n        }\n      }\n    }\n    throw new IllegalArgumentException(\"No two sum solution\");\n  }\n}",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.copy),
                      onPressed: () {
                        Clipboard.setData(ClipboardData(
                            text:
                                "class Solution {\n  public int[] twoSum(int[] nums, int target) {\n    for (int i = 0; i < nums.length; i++) {\n      for (int j = i + 1; j < nums.length; j++) {\n        if (nums[j] == target - nums[i]) {\n          return new int[] { i, j };\n        }\n      }\n    }\n    throw new IllegalArgumentException(\"No two sum solution\");\n  }\n}"));
                      },
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              CustomText(
                text: "Complexity Analysis",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "Time complexity : O(n^2) For each element, we try to find its complement by looping through the rest of array which takes O(n) time. Therefore, the time complexity is O(n^2).",
                fontSize: 15,
                color: Colors.white,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "Space complexity : O(1) We only need two elements in the array so the space complexity is O(1).",
                fontSize: 15,
                color: Colors.white,
              ),
              20.verticalSpace,
              //divider
              SizedBox(
                height: 50,
                child: Divider(
                  color: Colors.white,
                  height: 10
                ),
              ),
              CustomText(
                text: "Approach 2 : Two-pass Hash Table",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "To improve our run time complexity, we need a more efficient way to check if the complement exists in the array. If the complement exists, we need to look up its index. What is the best way to maintain a mapping of each element in the array to its index? A hash table.",
                fontSize: 15,
                color: Colors.white,
              ),
              20.verticalSpace,
              CustomText(
                text: "Implementation",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 40, bottom: 10),
                    child: SelectableText(
                      "class Solution {\n  public int[] twoSum(int[] nums, int target) {\n    Map<Integer, Integer> map = new HashMap<>();\n    for (int i = 0; i < nums.length; i++) {\n      map.put(nums[i], i);\n    }\n    for (int i = 0; i < nums.length; i++) {\n      int complement = target - nums[i];\n      if (map.containsKey(complement) && map.get(complement) != i) {\n        return new int[] { i, map.get(complement) };\n      }\n    }\n    throw new IllegalArgumentException(\"No two sum solution\");\n  }\n}",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.copy),
                      onPressed: () {
                        Clipboard.setData(ClipboardData(
                            text:
                                "class Solution {\n  public int[] twoSum(int[] nums, int target) {\n    Map<Integer, Integer> map = new HashMap<>();\n    for (int i = 0; i < nums.length; i++) {\n      map.put(nums[i], i);\n    }\n    for (int i = 0; i < nums.length; i++) {\n      int complement = target - nums[i];\n      if (map.containsKey(complement) && map.get(complement) != i) {\n        return new int[] { i, map.get(complement) };\n      }\n    }\n    throw new IllegalArgumentException(\"No two sum solution\");\n  }\n}"));
                      },
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              CustomText(
                text: "Complexity Analysis",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "Time complexity : O(n) We traverse the list containing n elements exactly twice. Since the hash table reduces the look up time to O(1), the time complexity is O(n).",
                fontSize: 15,
                color: Colors.white,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "Space complexity : O(n) The extra space required depends on the number of items stored in the hash table, which stores exactly n elements.",
                fontSize: 15,
                color: Colors.white,
              ),
              20.verticalSpace,
              //divider
              SizedBox(
                height: 50,
                child: Divider(
                  color: Colors.white,
                  height: 10
                ),
              ),
              CustomText(
                text: "Approach 3 : One-pass Hash Table",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "It turns out we can do it in one-pass. While we iterate and insert elements into the table, we also look back to check if the current element's complement already exists in the table. If it exists, we have found a solution and return immediately.",
                fontSize: 15,
                color: Colors.white,
              ),
              20.verticalSpace,
              CustomText(
                text: "Implementation",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.only(
                        left: 10, right: 10, top: 40, bottom: 10),
                    child: SelectableText(
                      "class Solution {\n  public int[] twoSum(int[] nums, int target) {\n    Map<Integer, Integer> map = new HashMap<>();\n    for (int i = 0; i < nums.length; i++) {\n      int complement = target - nums[i];\n      if (map.containsKey(complement)) {\n        return new int[] { map.get(complement), i };\n      }\n      map.put(nums[i], i);\n    }\n    throw new IllegalArgumentException(\"No two sum solution\");\n  }\n}",
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.copy),
                      onPressed: () {
                        Clipboard.setData(ClipboardData(
                            text:
                                "class Solution {\n  public int[] twoSum(int[] nums, int target) {\n    Map<Integer, Integer> map = new HashMap<>();\n    for (int i = 0; i < nums.length; i++) {\n      int complement = target - nums[i];\n      if (map.containsKey(complement)) {\n        return new int[] { map.get(complement), i };\n      }\n      map.put(nums[i], i);\n    }\n    throw new IllegalArgumentException(\"No two sum solution\");\n  }\n}"));
                      },
                    ),
                  ),
                ],
              ),
              20.verticalSpace,
              CustomText(
                text: "Complexity Analysis",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "Time complexity : O(n) We traverse the list containing n elements exactly once. Each look up in the table costs only O(1) time.",
                fontSize: 15,
                color: Colors.white,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "Space complexity : O(n) The extra space required depends on the number of items stored in the hash table, which stores at most n elements.",
                fontSize: 15,
                color: Colors.white,
              ),
              20.verticalSpace,
              //divider
              SizedBox(
                height: 50,
                child: Divider(
                  color: Colors.white,
                  height: 10
                ),
              ),
              CustomText(
                text: "Conclusion",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              10.verticalSpace,
              CustomText(
                text:
                    "The two-pass hash table approach is the most efficient way to solve the problem. The one-pass hash table approach is also efficient.",
                fontSize: 15,
                color: Colors.white,
              ),
              20.verticalSpace,
              CustomText(
                text: "Happy Coding!",
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),

            ])),
      ),
    );
  }
}
