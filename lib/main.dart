import 'package:basketball_points_counter/cubit/counter_cubit.dart';
import 'package:basketball_points_counter/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketballCounterApp());
}

class BasketballCounterApp extends StatelessWidget {
  const BasketballCounterApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blueGrey,
              title: const Text('Points Counter'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team A',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                            style: const TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                minimumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonNumber: 1);
                            },
                            child: const Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                minimumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonNumber: 2);
                            },
                            child: const Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                minimumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'A', buttonNumber: 3);
                            },
                            child: const Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 500,
                      child: VerticalDivider(
                        thickness: 1,
                        color: Colors.grey,
                        indent: 50,
                        endIndent: 50,
                      ),
                    ),
                    SizedBox(
                      height: 500,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            'Team B',
                            style: TextStyle(fontSize: 32),
                          ),
                          Text(
                            '${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                            style: const TextStyle(fontSize: 150),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                minimumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'B', buttonNumber: 1);
                            },
                            child: const Text(
                              'Add 1 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                minimumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'B', buttonNumber: 2);
                            },
                            child: const Text(
                              'Add 2 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blueGrey,
                                minimumSize: const Size(150, 50)),
                            onPressed: () {
                              BlocProvider.of<CounterCubit>(context)
                                  .teamIncrement(team: 'B', buttonNumber: 3);
                            },
                            child: const Text(
                              'Add 3 Point',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      minimumSize: const Size(150, 50)),
                  onPressed: () {
                    BlocProvider.of<CounterCubit>(context).teamReset();
                  },
                  child: const Text(
                    'Reset',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                )
              ],
            ),
          );
        },
        listener: (context, state) {});
  }
}
