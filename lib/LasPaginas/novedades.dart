import 'package:flutter/material.dart';

class NovedadesPage extends StatelessWidget {
  const NovedadesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.network('https://raw.githubusercontent.com/OchoaDavid0663/IAMoviles-UII-Act-4-Tabbar-5-opciones/refs/heads/main/novedades.jfif'),
    );
  }
}