import 'package:flutter/material.dart';

void main() {
  runApp(const Projeto());
}

class Projeto extends StatelessWidget {
  const Projeto({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ProjetoPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class ProjetoPage extends StatefulWidget {
  const ProjetoPage({super.key, required this.title});
  final String title;

  @override
  State<ProjetoPage> createState() => _ProjetoPageState();
}

class _ProjetoPageState extends State<ProjetoPage> {
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
              child: Image.network("https://super.abril.com.br/wp-content/uploads/2021/10/meta_site.jpg?quality=90&strip=info"),
            ),
            Text("Projeto: Meta", style: TextStyle(fontSize: 23),),
            Text("Orçamento: R\$ 58.000.000,00", style: TextStyle(fontSize: 16),),
          ],
          
        ),
      )
    );
  }
}
