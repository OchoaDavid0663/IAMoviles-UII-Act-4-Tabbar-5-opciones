import 'package:flutter/material.dart';
// Importación de tus 5 archivos nuevos
import 'LasPaginas/medicamentos.dart';
import 'LasPaginas/souvenirs.dart';
import 'LasPaginas/suplementos.dart';
import 'LasPaginas/novedades.dart';
import 'LasPaginas/basicos.dart';

void main() => runApp(const MiApp());

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SIMILARES',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF1A1A1D),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1D1E33),
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: Colors.white, 
            fontSize: 20, 
            fontWeight: FontWeight.bold, 
            letterSpacing: 3
          ),
        ),
      ),
      home: const PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("SIMILARES"),
          bottom: const TabBar(
            indicatorColor: Color(0xFF00E5FF),
            tabs: [
              Tab(icon: Icon(Icons.medication, color: Color(0xFF00E5FF))),
              Tab(icon: ImageIcon(
                NetworkImage('https://raw.githubusercontent.com/OchoaDavid0663/IAMoviles-UII-Act-4-Tabbar-5-opciones/refs/heads/main/logo%20sou.png'),
                color: Color(0xFF00E5FF),
              )),
              Tab(icon: Icon(Icons.bolt, color: Color(0xFF00E5FF))),
              Tab(icon: Icon(Icons.star_outline, color: Color(0xFF00E5FF))),
              Tab(icon: Icon(Icons.shopping_basket, color: Color(0xFF00E5FF))),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MedicamentosPage(),
            SouvenirsPage(),
            SuplementosPage(),
            NovedadesPage(),
            BasicosPage(),
          ],
        ),
      ),
    );
  }
}