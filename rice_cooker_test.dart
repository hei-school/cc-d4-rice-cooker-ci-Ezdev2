import 'package:test/test.dart';
import 'rice_cooker.dart';

void main() {
  test('riceCooker() fonctionne correctement', () async {
    double water = 2 * 1000; 

    await riceCooker();

    expect(water, 0); // L'eau doit être à 0 à la fin
    expect(prints, [
      'Ajouter le riz',
      'Ajouter l\'eau (1 tasse de riz pour 2 litres)',
      'Tourner ON le rice cooker',
      'Eau restante: 1900 ml',
      'Eau restante: 1800 ml',
      '...',
      'Eau restante: 100 ml',
      'Eau restante: 0 ml',
      'Riz cuit. Rice cooker OFF',
      'Signal OFF',
    ]);
  });
}
