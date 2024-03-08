import 'package:flutter/material.dart';

void main() => runApp(const AnimatedContainerExampleApp());

class AnimatedContainerExampleApp extends StatelessWidget {
  const AnimatedContainerExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Container Animado!')),
        body: const AnimatedContainerExample(),
      ),
    );
  }
}

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
        child: AnimatedContainer(
          width: selected ? MediaQuery.of(context).size.width * 1.0 : 100.0,
          height: selected ? MediaQuery.of(context).size.height * 1.0 : 100.0,
          color: selected ? Colors.blueAccent : Colors.grey[50],
          alignment:
              selected ? Alignment.topCenter : AlignmentDirectional.center,
          duration: const Duration(seconds: 2),
          curve: Curves.fastOutSlowIn,
          child: selected ? Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlutterLogo(size: 75),
          ) : const Text("Me Clique", style: TextStyle(fontSize: 22, color: Colors.black),),
        ),
      ),
    );
  }
}
