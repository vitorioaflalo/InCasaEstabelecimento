class DashboardModel {
  int id;
  String tarifaMensal;
  String tarifaEntrega;
  double total;
  int entregasSolicitadas;
  int entregasRealizadas;
  int entregasDevolvidas;
  double valorReceber;

  DashboardModel(
      {this.id,
      this.tarifaMensal,
      this.tarifaEntrega,
      this.total,
      this.entregasSolicitadas,
      this.entregasRealizadas,
      this.entregasDevolvidas,
      this.valorReceber});

  DashboardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tarifaMensal = json['tarifa_mensal'];
    tarifaEntrega = json['tarifa_entrega'];
    total = json['total'];
    entregasSolicitadas = json['entregas_solicitadas'];
    entregasRealizadas = json['entregas_realizadas'];
    entregasDevolvidas = json['entregas_devolvidas'];
    valorReceber = json['valor_receber'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tarifa_mensal'] = this.tarifaMensal;
    data['tarifa_entrega'] = this.tarifaEntrega;
    data['total'] = this.total;
    data['entregas_solicitadas'] = this.entregasSolicitadas;
    data['entregas_realizadas'] = this.entregasRealizadas;
    data['entregas_devolvidas'] = this.entregasDevolvidas;
    data['valor_receber'] = this.valorReceber;
    return data;
  }
}
