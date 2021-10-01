class LoginModel {
  List<String> nonFieldErrors;
  String expiry;
  String token;
   int userId;
  final String status;
  LoginModel({this.status, this.nonFieldErrors, this.expiry, this.token, this.userId});
  LoginModel.fromJson(Map<String, dynamic> json, this.status) {
    nonFieldErrors = json['non_field_errors']!= null ? json['non_field_errors'].cast<String>(): [];
    expiry = json['expiry'];
    token = json['token'];
    userId = json['user_id'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['non_field_errors'] = this.nonFieldErrors;
    data['expiry'] = this.expiry;
    data['token'] = this.token;                             
    data['user_id'] = this.userId;
    return data;
  }
}

