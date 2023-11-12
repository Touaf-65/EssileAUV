import 'package:intl/intl.dart';

class EssileFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: 'F CFA')
        .format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    //formating 8-digit Togolese phone number format : 91 00 45 76
    return '${phoneNumber.substring(0, 2)} ${phoneNumber.substring(2, 4)} ${phoneNumber.substring(4, 6)} ${phoneNumber.substring(6)}';
  }
}
