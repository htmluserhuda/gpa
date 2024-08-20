import 'package:flutter/material.dart';
import 'package:gpa/result.dart';
import 'package:gpa/widgets/slider_widget.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

double percentageToGradePoint(double percentage) {
  if (percentage >= 90) return 4.0;
  if (percentage >= 80) return 3.0;
  if (percentage >= 70) return 2.0;
  if (percentage >= 60) return 1.0;
  return 0.0;
}

double deg1 = 50;
double deg2 = 50;
double deg3 = 50;
double deg4 = 50;
double deg5 = 50;
double deg6 = 50;
double calculateGPA() {
  List<double> percentages = [deg1, deg2, deg3, deg4, deg5, deg6];
  double totalPoints = percentages
      .map((percentage) => percentageToGradePoint(percentage))
      .reduce((a, b) => a + b);
  return totalPoints / percentages.length;
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
        children: [
          const Expanded(
            child: Text(
              "Data Structure",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff176B87)),
            ),
          ),
          Expanded(
            child: Text(
              "${deg1.round()}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff41B3A2)),
            ),
          ),
          Expanded(
            child: SliderWidget(
              currentValue: deg1,
              onChanged: (value) {
                setState(() {
                  deg1 = value;
                });
              },
            ),
          ),
          const Expanded(
            child: Text(
              "Algorithms",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff176B87)),
            ),
          ),
          Expanded(
            child: Text(
              "${deg2.round()}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff41B3A2)),
            ),
          ),
          Expanded(
            child: SliderWidget(
                currentValue: deg2,
                onChanged: (value) {
                  setState(() {
                    deg2 = value;
                  });
                }),
          ),
          const Expanded(
            child: Text(
              "Artificial Intelligence",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff176B87)),
            ),
          ),
          Expanded(
            child: Text(
              "${deg3.round()}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff41B3A2)),
            ),
          ),
          Expanded(
            child: SliderWidget(
                currentValue: deg3,
                onChanged: (value) {
                  setState(() {
                    deg3 = value;
                  });
                }),
          ),
          const Expanded(
            child: Text(
              "Logic",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff176B87)),
            ),
          ),
          Expanded(
            child: Text(
              "${deg4.round()}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff41B3A2)),
            ),
          ),
          Expanded(
            child: SliderWidget(
                currentValue: deg4,
                onChanged: (value) {
                  setState(() {
                    deg4 = value;
                  });
                }),
          ),
          const Expanded(
            child: Text(
              "Operating System",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff176B87)),
            ),
          ),
          Expanded(
            child: Text(
              "${deg5.round()}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff41B3A2)),
            ),
          ),
          Expanded(
            child: SliderWidget(
                currentValue: deg5,
                onChanged: (value) {
                  setState(() {
                    deg5 = value;
                  });
                }),
          ),
          const Expanded(
            child: Text(
              "Geographical Information System",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff176B87)),
            ),
          ),
          Expanded(
            child: Text(
              "${deg6.round()}",
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Color(0xff41B3A2)),
            ),
          ),
          Expanded(
            child: SliderWidget(
                currentValue: deg6,
                onChanged: (value) {
                  setState(() {
                    deg6 = value;
                  });
                }),
          ),
          MaterialButton(
            onPressed: () {
              double gpa = calculateGPA();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Result(
                    result: gpa,
                  ),
                ),
              );
            },
            color: const Color(0xff176B87),
            height: 70,
            minWidth: 1000,
            child: const Text(
              "Calculate",
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
