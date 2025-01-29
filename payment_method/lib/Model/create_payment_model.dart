class CreatePaymentModel {
  String? requestId;
  String? paymentId;
  String? status;
  bool? canceled;
  double? amount;
  String? currency;
  String? creationDate;
  String? formUrl;
  bool? withoutAuthenticate;

  CreatePaymentModel(
      {this.requestId,
      this.paymentId,
      this.status,
      this.canceled,
      this.amount,
      this.currency,
      this.creationDate,
      this.formUrl,
      this.withoutAuthenticate});

  CreatePaymentModel.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    paymentId = json['paymentId'];
    status = json['status'];
    canceled = json['canceled'];
    amount = json['amount'];
    currency = json['currency'];
    creationDate = json['creationDate'];
    formUrl = json['formUrl'];
    withoutAuthenticate = json['withoutAuthenticate'];
  }
}

class ErrorCreatePaymentModel {
  Error? error;

  ErrorCreatePaymentModel({this.error});

  ErrorCreatePaymentModel.fromJson(Map<String, dynamic> json) {
    error = json['error'] != null ? Error.fromJson(json['error']) : null;
  }
}

class Error {
  int? code;
  String? description;

  Error({this.code, this.description});

  Error.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    description = json['description'];
  }
}
