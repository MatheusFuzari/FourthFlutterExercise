import 'package:flutter/material.dart';

void main() {
  runApp(const Torno());
}

class Torno extends StatelessWidget {
  const Torno({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const TornoPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class TornoPage extends StatefulWidget {
  const TornoPage({super.key, required this.title});
  final String title;

  @override
  State<TornoPage> createState() => _TornoPageState();
}

class _TornoPageState extends State<TornoPage> {
  TextEditingController _kwController = TextEditingController();
  TextEditingController _hourController = TextEditingController();
  double _kwhTotal = 0.0;
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
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: _kwController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Digite os Kw consumidos',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: _hourController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Digite as horas consumidas',
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                _kwhTotal = double.parse(_kwController.text) * double.parse(_hourController.text) * 30;
              });
            }, child: Text("Calcular")),
            Text("Total gasto em Kw/h: "+_kwhTotal.toStringAsFixed(2))
          ],
        ),
      ),
    );
  }
}
