class EntregaModel {
  int id;
  String nomeDoCliente;
  String cEP;
  String logradouro;
  String numero;
  String complemento;
  String pontoDeReferencia;
  String bairro;
  String cidade;
  String estado;
  String telefone;
  String celular;
  String troco;
  String valorDoPedido;
  String valorDaEntrega;
  String metodoDePagamento;
  String cargaMaiorHabitual;
  String createdAt;
  String status;
  String avaliacao;
  int distancia;
  int entregador;


  EntregaModel({
    this.id,
    this.nomeDoCliente,
    this.cEP,
    this.logradouro,
    this.numero,
    this.complemento,
    this.pontoDeReferencia,
    this.bairro,
    this.cidade,
    this.estado,
    this.telefone,
    this.celular,
    this.troco,
    this.valorDoPedido,
    this.valorDaEntrega,
    this.metodoDePagamento,
    this.cargaMaiorHabitual,
    this.createdAt,
    this.status,
    this.avaliacao,
    this.distancia,
    this.entregador,
  });

  EntregaModel.fromJson(
    Map<String, dynamic> json,
  ) {
    id = json['id'];
    nomeDoCliente = json['Nome_do_Cliente'];
    cEP = json['CEP'];
    logradouro = json['Logradouro'];
    numero = json['Numero'];
    complemento = json['Complemento'];
    pontoDeReferencia = json['Ponto_de_Referencia'];
    bairro = json['Bairro'];
    cidade = json['Cidade'];
    estado = json['Estado'];
    telefone = json['Telefone'];
    celular = json['Celular'];
    troco = json['Troco'];
    valorDoPedido = json['Valor_do_Pedido'];
    valorDaEntrega = json['Valor_da_Entrega'];
    metodoDePagamento = json['Metodo_de_Pagamento'];
    cargaMaiorHabitual = json['Carga_Maior_Habitual'];
    createdAt = json['created_at'];
    status = json['Status'];
    avaliacao = json['Avaliacao'];
    distancia = json['Distancia'];
    entregador = json['Entregador'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Nome_do_Cliente'] = this.nomeDoCliente;
    data['CEP'] = this.cEP;
    data['Logradouro'] = this.logradouro;
    data['Numero'] = this.numero;
    data['Complemento'] = this.complemento;
    data['Ponto_de_Referencia'] = this.pontoDeReferencia;
    data['Bairro'] = this.bairro;
    data['Cidade'] = this.cidade;
    data['Estado'] = this.estado;
    data['Telefone'] = this.telefone;
    data['Celular'] = this.celular;
    data['Troco'] = this.troco;
    data['Valor_do_Pedido'] = this.valorDoPedido;
    data['Valor_da_Entrega'] = this.valorDaEntrega;
    data['Metodo_de_Pagamento'] = this.metodoDePagamento;
    data['Carga_Maior_Habitual'] = this.cargaMaiorHabitual;
    data['created_at'] = this.createdAt;
    data['Status'] = this.status;
    data['Avaliacao'] = this.avaliacao;
    data['Distancia'] = this.distancia;
    data['Entregador'] = this.entregador;
    return data;
  }
}
