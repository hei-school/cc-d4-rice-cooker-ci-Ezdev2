import 'dart:async';

extension DurationExtension on Duration {
  Future<void> sleep() async {
    await Future.delayed(this);
  }
}

Future<void> riceCooker() async {
  try {
    print("Ajouter le riz");
    print("Ajouter l'eau (1 tasse de riz pour 2 litres)");

    double water = 2 * 1000; // 2 litres

    print("Tourner ON le rice cooker");

    while (water > 0) {
      await Duration(seconds: 1).sleep(); // Pause d'1 seconde
      water -= 100;
      print("Eau restante: $water ml");
    }

    print("Riz cuit. Rice cooker OFF");
    print("Signal OFF");
  } catch (e) {
    print("Erreur: $e");
  }
}

void main() async {
  await riceCooker();
}