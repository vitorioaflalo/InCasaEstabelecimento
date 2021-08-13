import 'package:flutter_test/flutter_test.dart';
import 'package:incasaestabelecimento/app/modules/solicitarEntrega/solicitarEntrega_store.dart';
 
void main() {
  late SolicitarEntregaStore store;

  setUpAll(() {
    store = SolicitarEntregaStore();
  });

  test('increment count', () async {
    expect(store.state, equals(0));
    store.update(store.state + 1);
    expect(store.state, equals(1));
  });
}