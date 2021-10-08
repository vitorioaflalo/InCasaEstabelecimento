class RelatorioModel {
  String tarifaMensal;
  String tarifaEntrega;
  int total;
  int entregasSolicitadas;
  int entregasRealizadas;
  int entregasDevolvidas;
  int valorReceber;
  String razaoSocial;

  RelatorioModel(
      this.tarifaMensal,
      this.tarifaEntrega,
      this.total,
      this.entregasSolicitadas,
      this.entregasRealizadas,
      this.entregasDevolvidas,
      this.valorReceber);
}
