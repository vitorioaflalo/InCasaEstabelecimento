class PerfilModel {
  int id;
  String razaoSocial;
  String cNPJ;
  String telefone;
  String celular;
  String email;
  Null logo;
  String responsavel;
  String emailResponsavel;
  String telefoneResponsavel;
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
  String numeroDaConta;
  bool termos;
  bool aprovado;
  bool aprovadoRestricao;
  String createdAt;
  int user;

  PerfilModel(
      {this.id,
      this.razaoSocial,
      this.cNPJ,
      this.telefone,
      this.celular,
      this.email,
      this.logo,
      this.responsavel,
      this.emailResponsavel,
      this.telefoneResponsavel,
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
      this.numeroDaConta,
      this.termos,
      this.aprovado,
      this.aprovadoRestricao,
      this.createdAt,
      this.user});

  PerfilModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    razaoSocial = json['Razao_Social'];
    cNPJ = json['CNPJ'];
    telefone = json['Telefone'];
    celular = json['Celular'];
    email = json['Email'];
    logo = json['Logo'];
    responsavel = json['Responsavel'];
    emailResponsavel = json['Email_Responsavel'];
    telefoneResponsavel = json['Telefone_Responsavel'];
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
    numeroDaConta = json['Numero_da_Conta'];
    termos = json['Termos'];
    aprovado = json['Aprovado'];
    aprovadoRestricao = json['Aprovado_Restricao'];
    createdAt = json['created_at'];
    user = json['User'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['Razao_Social'] = this.razaoSocial;
    data['CNPJ'] = this.cNPJ;
    data['Telefone'] = this.telefone;
    data['Celular'] = this.celular;
    data['Email'] = this.email;
    data['Logo'] = this.logo;
    data['Responsavel'] = this.responsavel;
    data['Email_Responsavel'] = this.emailResponsavel;
    data['Telefone_Responsavel'] = this.telefoneResponsavel;
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
    data['Numero_da_Conta'] = this.numeroDaConta;
    data['Termos'] = this.termos;
    data['Aprovado'] = this.aprovado;
    data['Aprovado_Restricao'] = this.aprovadoRestricao;
    data['created_at'] = this.createdAt;
    data['User'] = this.user;
    return data;
  }
}