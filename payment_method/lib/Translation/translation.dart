import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class MyTransition extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "Complete_Orders": "الطلبات المكتملة",
          "Waiting_Orders": "قيد التجهيز",
          "Payment_Amount": "المبلغ المدفوع",
          "Save": "تأكيد",
          "success": "تمت العملية بنجاح",
          "Payment_Failed": "فشل الدفع",
          "Error": "حدث خطأ يرجى المحاولة لاحقا",
          "Connection_Link": "رابط الاتصال",
          "Select_Design": "اختر التصميم",
          "Port": "Port",
          "Please_Check_Connection": "يرجى التحقق من رابط الاتصال",
          "Please_Enter_Connection": "أدخل رابط الاتصال",
          "Delete": "حذف"
        },
      };
}
