import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testproject/core/state/cubit/counter_cubit.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  void increase() {
    BlocProvider.of<CounterCubit>(context).increase();
  }

  void decrease() {
    BlocProvider.of<CounterCubit>(context).decrease();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/',
                );
              },
              icon: const Icon(Icons.home)),
          IconButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/about',
                );
              },
              icon: const Icon(Icons.account_circle)),
        ],
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(
              height: 20,
            ),
            BlocBuilder<CounterCubit, CounterState>(
              builder: (context, state) {
                return Text(
                  state.count.toString(),
                  style: Theme.of(context).textTheme.headline2,
                );
              },
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  decrease();
                },
                icon: const Icon(Icons.remove)),
            IconButton(
                onPressed: () {
                  increase();
                },
                icon: const Icon(Icons.add))
          ],
        ),
      ],
    );
  }
}
