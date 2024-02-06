import 'package:flutter/material.dart';

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int counterTeamA = 0;
  int counterTeamB = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 30,
        backgroundColor: Colors.yellow,
        title: Center(child: Text('Points Counter')),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Team A',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    '$counterTeamA',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          counterTeamA++;
                          print(counterTeamA);
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          counterTeamA = counterTeamA + 2;
                          print(counterTeamA);
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          counterTeamA = counterTeamA + 3;
                          print(counterTeamA);
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ],
              ),
              SizedBox(
                height: 350,
                child: VerticalDivider(
                  thickness: 1,
                  color: Color.fromARGB(255, 119, 115, 115),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Team B',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    '$counterTeamB',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 50),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          counterTeamB++;
                          print(counterTeamA);
                        });
                      },
                      child: Text(
                        'Add 1 point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          counterTeamB = counterTeamB + 2;
                          print(counterTeamA);
                        });
                      },
                      child: Text(
                        'Add 2 point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow,
                          minimumSize: Size(150, 50)),
                      onPressed: () {
                        setState(() {
                          counterTeamB = counterTeamB + 3;
                          print(counterTeamA);
                        });
                      },
                      child: Text(
                        'Add 3 point',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                ],
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      minimumSize: Size(150, 50)),
                  onPressed: () {
                    setState(() {
                      counterTeamA = 0;
                      counterTeamB = 0;
                    });
                  },
                  child: Text(
                    'Reset',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
