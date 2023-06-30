import 'package:flutter_test/flutter_test.dart';
import 'package:simple_converter/controller.dart';

main() {
  late Controller sut;

  setUp(() {
    sut = Controller();
  });

  test("Permite adicionar um dígito", () {
    //cenário
    String digito = "1";

    //ação

    sut.adicionarDigito(digito);

    //verificação
    expect(sut.valorEntrada, digito);
  });

  test("Verifica conversão", () {
    //cenário
    final entrada = "150";
    final saida = "65.56";
    sut.adicionarDigito(entrada);

    //ação
    sut.converter();

    //verificação
    expect(sut.valorSaida, saida);
  });

  test("Verificar limpar", () {
    //cenário

    sut.adicionarDigito("1");
    sut.converter();

    //ação
    sut.limpar();

    //verificação
    expect(sut.valorEntrada, "");
    expect(sut.valorSaida, "");
  });
}
