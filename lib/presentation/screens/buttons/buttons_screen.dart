import 'package:flutter/material.dart';

class ButttonsScreen extends StatelessWidget {
  static const name = "butttons_screen";

  const ButttonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botones screen'),
      ),
      body: const Placeholder(),
    );
  }
}
