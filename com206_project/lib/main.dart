import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(title: 'Navigation Basics', home: FirstRoute()));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Go to other page!'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute<void>(
                builder: (context) => const SecondRoute(),
              ),
            );
          },
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Page')),
      body: Column (
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Go back!'),
          ),
          ElevatedButton(
            onPressed: null,
            child: const Text('Button for something 1'),
          ),
          ElevatedButton(
            onPressed: null,
            child: const Text('Button for something 2'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Button for something 3'),
          ),
          ElevatedButton(
            onPressed: null,
            child: const Text('Button for something 4'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Button for something 5'),
          ),
          ElevatedButton(
            onPressed: null,
            child: const Text('Button for something 6'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Button for something 7'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Button for something 8'),
          ),
        ],
      ),
    );
  }
}
