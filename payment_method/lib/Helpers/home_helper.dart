import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:payment_method/Model/create_payment_model.dart';
import 'package:uuid/uuid.dart';
import '../Model/payment_status_model.dart';
import '../constant/variable.dart';

class HomeHelper {
  //////////////////// GET DASBOARD COUNT ////////////////

  static Future<CreatePaymentModel> createPayment(double payment) async {
    String credentials =
        '${VariableData.userNameAuth}:${VariableData.passwordAuth}';
    var uuid = Uuid();
    String guid = uuid.v4();
    Map<String, Object> data = {
      "requestId": guid,
      "amount": payment,
      "currency": VariableData.paymentCurrency,
      "locale": VariableData.locale,
      "finishPaymentUrl": VariableData.redirectUrl
    };

    final url = Uri.parse("https://uat-sandbox-3ds-api.qi.iq/api/v1/payment");
    final response = await http.post(url, body: jsonEncode(data), headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "X-Terminal-Id": VariableData.terminalID,
      'Authorization': 'Basic ${base64Encode(utf8.encode(credentials))}',
    });
    if (response.statusCode == 200) {
      return CreatePaymentModel.fromJson(jsonDecode(response.body));
    } else {
      var paymentError =
          ErrorCreatePaymentModel.fromJson(jsonDecode(response.body));

      throw Exception(paymentError.error?.description.toString());
    }
  }

  static Future<PaymentStatusModel> checkPayment(String? paymentId) async {
    String credentials =
        '${VariableData.userNameAuth}:${VariableData.passwordAuth}';

    final url = Uri.parse(
        "https://uat-sandbox-3ds-api.qi.iq/api/v1/payment/$paymentId/status");
    final response = await http.get(url, headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
      "X-Terminal-Id": VariableData.terminalID,
      'Authorization': 'Basic ${base64Encode(utf8.encode(credentials))}',
    });
    if (response.statusCode == 200) {
      return PaymentStatusModel.fromJson(jsonDecode(response.body));
    } else {
      var paymentError =
          ErrorCreatePaymentModel.fromJson(jsonDecode(response.body));

      throw Exception(paymentError.error?.description.toString());
    }
  }
}
