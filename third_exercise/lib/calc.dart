import 'package:flutter/material.dart';
void main() {
  runApp(const Calc());
}

class Calc extends StatelessWidget {
  const Calc({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const CalcPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class CalcPage extends StatefulWidget {
  const CalcPage({super.key, required this.title});
  final String title;

  @override
  State<CalcPage> createState() => _CalcPageState();
}

class _CalcPageState extends State<CalcPage> {
  final TextEditingController _usernameController = TextEditingController();
  double _kwhConsumed = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: _usernameController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Digite os Kw/h consumidos',
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              setState(() {
                _kwhConsumed = double.parse(_usernameController.text) * 0.65; 
              });
            }, child: Text("Calculate")),
            _kwhConsumed == 0.0 ? Text("") : Text("Valor final: R\$: "+_kwhConsumed.toStringAsFixed(2), style: TextStyle(fontSize:  18),)
          ],
      ),
    );
  }
}
