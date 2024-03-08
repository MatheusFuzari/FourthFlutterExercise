import 'package:flutter/material.dart';

void main() {
  runApp(const Fresa());
}

class Fresa extends StatelessWidget {
  const Fresa({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FresaPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class FresaPage extends StatefulWidget {
  const FresaPage({super.key, required this.title});
  final String title;

  @override
  State<FresaPage> createState() => _FresaPageState();
}

class _FresaPageState extends State<FresaPage> {
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
