import 'package:intl/intl.dart';

class TFormatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return "${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}";
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming the phone number is in the format "1234567890"
    if (phoneNumber.length != 10) return phoneNumber;
    return "(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)}-${phoneNumber.substring(6)}";
  }

  static String formatEmail(String email) {
    // Simple email validation
    final RegExp emailRegExp =
        RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$');
    return emailRegExp.hasMatch(email) ? email : "Invalid email format";
  }

  static String formatName(String name) {
    // Capitalize the first letter of each word in the name
    return name
        .split(' ')
        .map((word) => word[0].toUpperCase() + word.substring(1).toLowerCase())
        .join(' ');
  }

  static String formatAddress(String address) {
    // Assuming the address is a simple string, you can add more complex formatting if needed
    return address.trim();
  }

  static String formatPostalCode(String postalCode) {
    // Assuming the postal code is in the format "12345" or "12345-6789"
    final RegExp postalCodeRegExp = RegExp(r'^\d{5}(-\d{4})?$');
    return postalCodeRegExp.hasMatch(postalCode)
        ? postalCode
        : "Invalid postal code format";
  }

  static String formatCreditCardNumber(String cardNumber) {
    // Assuming the card number is in the format "1234 5678 9012 3456"
    final RegExp cardNumberRegExp = RegExp(r'^\d{4} \d{4} \d{4} \d{4}$');
    return cardNumberRegExp.hasMatch(cardNumber)
        ? cardNumber
        : "Invalid credit card number format";
  }

  static String formatExpiryDate(String expiryDate) {
    // Assuming the expiry date is in the format "MM/YY"
    final RegExp expiryDateRegExp = RegExp(r'^(0[1-9]|1[0-2])\/?([0-9]{2})$');
    return expiryDateRegExp.hasMatch(expiryDate)
        ? expiryDate
        : "Invalid expiry date format";
  }

  static String formatCVC(String cvc) {
    // Assuming the CVC is a 3-digit number
    final RegExp cvcRegExp = RegExp(r'^\d{3}$');
    return cvcRegExp.hasMatch(cvc) ? cvc : "Invalid CVC format";
  }

  static String formatUsername(String username) {
    // Assuming the username can only contain alphanumeric characters and underscores
    final RegExp usernameRegExp = RegExp(r'^[a-zA-Z0-9_]+$');
    return usernameRegExp.hasMatch(username)
        ? username
        : "Invalid username format";
  }

  static String formatPassword(String password) {
    // Assuming the password should be at least 8 characters long
    return password.length >= 8
        ? password
        : "Password must be at least 8 characters long";
  }

  static String formatUrl(String url) {
    // Simple URL validation
    final RegExp urlRegExp =
        RegExp(r'^(https?:\/\/)?([a-zA-Z0-9.-]+)(\/[^\s]*)?$');
    return urlRegExp.hasMatch(url) ? url : "Invalid URL format";
  }

  static String formatDateTime(DateTime dateTime) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(dateTime);
  }
}
