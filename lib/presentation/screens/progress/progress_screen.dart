import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProgressScreen extends StatelessWidget {
  static const name = '/progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text('Circular Progress Indicator'),
          SizedBox(
            height: 10,
          ),
          CircularProgressIndicator(
            strokeWidth: 2,
            color: Colors.black45,
          ),
          SizedBox(
            height: 20,
          ),
          Text('Circular and Linear Indicator Controlable'),
          SizedBox(
            height: 10,
          ),
          _ControllerProgressIndicator()
        ],
      ),
    );
  }
}

class _ControllerProgressIndicator extends StatelessWidget {
  const _ControllerProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(
        const Duration(milliseconds: 300),
        (value) {
          return value * 2 / 100;
        },
      ).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progreesValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: progreesValue,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: LinearProgressIndicator(
                  value: progreesValue,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
