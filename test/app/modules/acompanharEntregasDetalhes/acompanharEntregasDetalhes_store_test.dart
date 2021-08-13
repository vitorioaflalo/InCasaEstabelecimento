import 'package:flutter_test/flutter_test.dart';
import 'package:incasaestabelecimento/app/modules/acompanharEntregasDetalhes/acompanharEntregasDetalhes_store.dart';
 
void main() {
  late AcompanharEntregasDetalhesStore store;

  setUpAll(() {
    store = AcompanharEntregasDetalhesStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}