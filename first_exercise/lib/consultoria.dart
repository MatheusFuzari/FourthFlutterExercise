import 'package:flutter/material.dart';

void main() {
  runApp(const Consultoria());
}

class Consultoria extends StatelessWidget {
  const Consultoria({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ConsultoriaPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ConsultoriaPage extends StatefulWidget {
  const ConsultoriaPage({super.key, required this.title});
  final String title;

  @override
  State<ConsultoriaPage> createState() => _ConsultoriaPageState();
}

class _ConsultoriaPageState extends State<ConsultoriaPage> {
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
              height: 300,
              width: 300,
              alignment: Alignment.center,
              child: Image.network("https://vbmc.com.br/wp-content/uploads/2021/04/10_passos_projeto_de_consultoria_empresarial.jpg"),
            ),
            Text("Consultoria + Trends", style: TextStyle(fontSize: 23),),
            Text("Orçamento por reunião: R\$ 1.720,00", style: TextStyle(fontSize: 16),),
          ],
          
        ),
      )
    );
  }
}
