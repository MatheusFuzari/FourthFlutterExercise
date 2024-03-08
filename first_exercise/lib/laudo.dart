import 'package:flutter/material.dart';

void main() {
  runApp(const Laudo());
}

class Laudo extends StatelessWidget {
  const Laudo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LaudoPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LaudoPage extends StatefulWidget {
  const LaudoPage({super.key, required this.title});
  final String title;

  @override
  State<LaudoPage> createState() => _LaudoPageState();
}

class _LaudoPageState extends State<LaudoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 230,
              width: 230,
              alignment: Alignment.center,
              child: Image.network("https://www.deficienteciente.com.br/wp-content/uploads/2015/03/detran.jpg"),
            ),
            Text("Elaboração de laudo!", style: TextStyle(fontSize: 23),),
            Text("Orçamento: R\$ 720,00", style: TextStyle(fontSize: 16),),
          ],
          
        ),
      )
    );
  }
}
