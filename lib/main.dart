import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var con1 = TextEditingController();
  var con2 = TextEditingController();
  var con3 = TextEditingController();
  var con4 = TextEditingController();
  var con5 = TextEditingController();
  var result = "";
  var perc = "";
  var grade = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 10, 58, 98),
          appBar: AppBar(
            toolbarHeight: 30,
            title: const Text("DMC"),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: con1,
                    decoration: InputDecoration(
                        errorText: "Please enter English marks",
                        labelText: "English Marks",
                        labelStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: con2,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        errorText: "Please enter Maths marks",
                        labelText: "Physics Marks",
                        labelStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: con3,
                    decoration: InputDecoration(
                        errorText: "Please enter Maths marks",
                        labelText: "Maths Marks",
                        labelStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: con4,
                    decoration: InputDecoration(
                        errorText: "Please enter Science marks",
                        fillColor: Colors.white,
                        labelText: "Science Marks",
                        labelStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    style: const TextStyle(color: Colors.white),
                    controller: con5,
                    decoration: InputDecoration(
                        errorText: "Please enter Geography marks",
                        fillColor: Colors.white,
                        labelText: "Geography Marks",
                        labelStyle: const TextStyle(color: Colors.white),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.green),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors
                                  .red, // Set the desired background color
                            ),
                            onPressed: () => clear(),
                            child: const Text("Clear")),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors
                                  .blue, // Set the desired background color
                            ),
                            onPressed: () => calculate(),
                            child: const Text("Calculate")),
                      ),
                      const SizedBox(
                        width: 10,
                      )
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Obtained Marks: $result",
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Percentage: $perc",
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "Grade: $grade ",
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              )
            ],
          )),
    );
  }

  calculate() {
    int f1 = int.parse(con1.text.trim());
    int f2 = int.parse(con2.text.trim());
    int f3 = int.parse(con3.text.trim());
    int f4 = int.parse(con4.text.trim());
    int f5 = int.parse(con5.text.trim());
    int s = f1 + f2 + f3 + f4 + f5;
    int marks = (s ~/ 5);
    if (marks >= 90) {
      grade = 'A+';
    } else if (marks >= 80) {
      grade = 'A';
    } else if (marks >= 70) {
      grade = 'B';
    } else if (marks >= 60) {
      grade = 'C';
    } else if (marks >= 50) {
      grade = 'D';
    } else {
      grade = 'F';
    }
    setState(() {
      result = s.toString();
      perc = marks.toString();
    });
  }

  clear() {
    con1.clear();
    con2.clear();
    con3.clear();
    con4.clear();
    con5.clear();
  }
}
