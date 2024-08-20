import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.result});

  final double result;
  String getResultText(double gpa) {
    if (gpa > 3.7) {
      return "Excellent";
    } else if (gpa >= 3) {
      return "Very Good";
    } else if (gpa >= 2) {
      return "Good";
    } else if (gpa > 1) {
      return "Acceptable";
    } else {
      return "Fail";
    }
  }

  String getResultMessage(double gpa) {
    if (gpa > 3.7) {
      return "Outstanding! You've achieved top marks and demonstrated exceptional performance. Keep up the great work!";
    } else if (gpa >= 3) {
      return "Great job! Your results are very good, and you're on the right track. Continue working hard to reach the top.";
    } else if (gpa >= 2) {
      return "You're doing well. There's room for improvement, but your efforts are commendable. Keep striving for better.";
    } else if (gpa > 1) {
      return "You've met the basic requirements, but there's a need for more effort. Take this as an opportunity to improve in the future.";
    } else {
      return "Unfortunately, you didn't pass this time. Don't be discouraged; use this as a learning opportunity to improve and succeed next time.";
    }
  }

  @override
  Widget build(BuildContext context) {
    String resultText = getResultText(result);
    String resultMessage = getResultMessage(result);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Your GPA is safe",
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
        ),
        backgroundColor: const Color(0xff176B87),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30, left: 15),
            child: Text(
              "Your Result",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff176B87)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 60.0, right: 60, left: 60, bottom: 20),
                      child: Text(
                        resultText,
                        style: TextStyle(
                            color: resultText == "Fail"
                                ? Colors.red
                                : Colors.green,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Text(
                      result.toStringAsFixed(2),
                      style: const TextStyle(
                          fontSize: 64, fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        resultMessage,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff8B8C9E)),
                      ),
                    ),
                    const SizedBox(
                      height: 140,
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                color: const Color(0xff176B87),
                height: 70,
                minWidth: 1000,
                child: const Text(
                  "Re_Calculate",
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ))
        ],
      ),
    );
  }
}
