import 'package:basketballcounter/cubit/counterCubit.dart';
import 'package:basketballcounter/cubit/counterState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, counterState>(
        listener: (context, state) => {
              // if (state is CounterAState)
              //   {BlocProvider.of<CounterCubit>(context).counterTeamA}
              // else
              //   {BlocProvider.of<CounterCubit>(context).counterTeamB}
            },
        builder: (context, state) {
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
                          '${BlocProvider.of<CounterCubit>(context).counterTeamA}',
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
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamAIncrements(1);
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
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamAIncrements(2);
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
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamAIncrements(3);
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
                          '${BlocProvider.of<CounterCubit>(context).counterTeamB}',
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
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamBIncrements(1);
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
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamBIncrements(2);
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
                              BlocProvider.of<CounterCubit>(context)
                                  .TeamBIncrements(3);
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
                          // setState(() {
                          //   counterTeamA = 0;
                          //   counterTeamB = 0;
                          // });
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
        });
  }
}
