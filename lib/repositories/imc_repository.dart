import 'package:flutter_calculadora_imc/services/calculadora_imc.dart';

import '../models/imc.dart';

class IMCRepository {
  final List<IMC> _imcs = [];

  List<IMC> get imcs => _imcs;

  void addIMC(double peso, double altura) {
    final classificacao = CalculadoraIMC.classificacao(peso, altura);
    final imc = IMC(peso: peso, altura: altura, classificacao: classificacao);

    _imcs.add(imc);
  }
}
