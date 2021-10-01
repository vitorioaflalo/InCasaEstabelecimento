class EntregadorModel {
  int id;
  String nomeCompleto;
  String cPF;
  String rG;
  String cNH;
  String tipoCNH;
  String telefone;
  String celular;
  String email;
  String cEP;
  String logradouro;
  String numero;
  String complemento;
  String bairro;
  String cidade;
  String estado;
  String banco;
  String tipoDeConta;
  String agencia;
  String numeroDeConta;
  String marca;
  String modelo;
  String ano;
  String renavam;
  String possibilidadeDeTransporte;
  String documentoVeiculo;
  String selfie;
  String fotoCNH;
  String fotoRG;
  String fotoCPF;
  bool termos;
  bool aprovado;
  bool aprovadoRestricao;
  String createdAt;
  int user;

  EntregadorModel(
      {this.id,
      this.nomeCompleto,
      this.cPF,
      this.rG,
      this.cNH,
      this.tipoCNH,
      this.telefone,
      this.celular,
      this.email,
      this.cEP,
      this.logradouro,
      this.numero,
      this.complemento,
      this.bairro,
      this.cidade,
      this.estado,
      this.banco,
      this.tipoDeConta,
      this.agencia,
      this.numeroDeConta,
      this.marca,
      this.modelo,
      this.ano,
      this.renavam,
      this.possibilidadeDeTransporte,
      this.documentoVeiculo,
      this.selfie,
      this.fotoCNH,
      this.fotoRG,
      this.fotoCPF,
      this.termos,
      this.aprovado,
      this.aprovadoRestricao,
      this.createdAt,
      this.user});

  EntregadorModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nomeCompleto = json['Nome_Completo'];
    cPF = json['CPF'];
    rG = json['RG'];
    cNH = json['CNH'];
    tipoCNH = json['Tipo_CNH'];
    telefone = json['Telefone'];
    celular = json['Celular'];
    email = json['Email'];
    cEP = json['CEP'];
    logradouro = json['Logradouro'];
    numero = json['Numero'];
    complemento = json['Complemento'];
    bairro = json['Bairro'];
    cidade = json['Cidade'];
    estado = json['Estado'];
    banco = json['Banco'];
    tipoDeConta = json['Tipo_de_Conta'];
    agencia = json['Agencia'];
    numeroDeConta = json['Numero_de_Conta'];
    marca = json['Marca'];
    modelo = json['Modelo'];
    ano = json['Ano'];
    renavam = json['Renavam'];
    possibilidadeDeTransporte = json['Possibilidade_de_Transporte'];
    documentoVeiculo = json['Documento_Veiculo'];
    selfie = json['Selfie'];
    fotoCNH = json['Foto_CNH'];
    fotoRG = json['Foto_RG'];
    fotoCPF = json['Foto_CPF'];
    termos = json['Termos'];
    aprovado = json['Aprovado'];
    aprovadoRestricao = json['Aprovado_Restricao'];
    createdAt = json['created_at'];
    user = json['User'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Nome_Completo'] = this.nomeCompleto;
    data['CPF'] = this.cPF;
    data['RG'] = this.rG;
    data['CNH'] = this.cNH;
    data['Tipo_CNH'] = this.tipoCNH;
    data['Telefone'] = this.telefone;
    data['Celular'] = this.celular;
    data['Email'] = this.email;
    data['CEP'] = this.cEP;
    data['Logradouro'] = this.logradouro;
    data['Numero'] = this.numero;
    data['Complemento'] = this.complemento;
    data['Bairro'] = this.bairro;
    data['Cidade'] = this.cidade;
    data['Estado'] = this.estado;
    data['Banco'] = this.banco;
    data['Tipo_de_Conta'] = this.tipoDeConta;
    data['Agencia'] = this.agencia;
    data['Numero_de_Conta'] = this.numeroDeConta;
    data['Marca'] = this.marca;
    data['Modelo'] = this.modelo;
    data['Ano'] = this.ano;
    data['Renavam'] = this.renavam;
    data['Possibilidade_de_Transporte'] = this.possibilidadeDeTransporte;
    data['Documento_Veiculo'] = this.documentoVeiculo;
    data['Selfie'] = this.selfie;
    data['Foto_CNH'] = this.fotoCNH;
    data['Foto_RG'] = this.fotoRG;
    data['Foto_CPF'] = this.fotoCPF;
    data['Termos'] = this.termos;
    data['Aprovado'] = this.aprovado;
    data['Aprovado_Restricao'] = this.aprovadoRestricao;
    data['created_at'] = this.createdAt;
    data['User'] = this.user;
    return data;
  }
}
