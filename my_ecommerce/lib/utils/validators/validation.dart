class Tvalidator {
  /// Validate Email
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // Regular expression for email validation
    final emailReg =
        RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");

    if (!emailReg.hasMatch(value)) {
      return 'Invalid Email address';
    }

    return null;
  }

  /// Validate Password
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }

    // Optional: Add more rules
    // final hasUpper = value.contains(RegExp(r'[A-Z]'));
    // final hasNumber = value.contains(RegExp(r'[0-9]'));

    // if (!hasUpper || !hasNumber) {
    //   return 'Password must contain at least one uppercase letter and one number';
    // }

    return null;
  }

  /// Validate Phone Number
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }

    final phoneReg = RegExp(r'^\d{10,15}$');

    if (!phoneReg.hasMatch(value)) {
      return 'Enter a valid phone number (10–15 digits)';
    }

    return null;
  }
}
