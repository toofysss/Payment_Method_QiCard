class PaymentStatusModel {
  String? requestId;
  String? paymentId;
  String? status;
  bool? canceled;
  double? amount;
  String? currency;
  String? paymentType;
  String? creationDate;
  bool? withoutAuthenticate;

  PaymentStatusModel({
    this.requestId,
    this.paymentId,
    this.status,
    this.canceled,
    this.amount,
    this.currency,
    this.paymentType,
    this.creationDate,
    this.withoutAuthenticate,
  });

  PaymentStatusModel.fromJson(Map<String, dynamic> json) {
    requestId = json['requestId'];
    paymentId = json['paymentId'];
    status = json['status'];
    canceled = json['canceled'];
    amount = json['amount'];
    currency = json['currency'];
    paymentType = json['paymentType'];
    creationDate = json['creationDate'];
    withoutAuthenticate = json['withoutAuthenticate'];
  }
}
