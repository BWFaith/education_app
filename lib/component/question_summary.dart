import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({super.key, required this.resultSummary});
  final List<Map<String, Object>> resultSummary;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: SizedBox(
        height: 600,
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: resultSummary.map((data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 15,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: data["selected_answer"] == data["answer"]
                          ? Colors.green
                          : Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                        ((data['question_index'] as int) + 1).toString(),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data["question"] as String,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        Text(
                          "Correct Answer:  ${data["answer"]}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          "Selected Answer: ${data["selected_answer"]}",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
