class Tvalidators {
  static String? validationEmail(String? value) {
    if (value == null || value.isEmpty) {
      return "Email is required";
    }

    // ignore: valid_regexps
    final emailRegexp = RegExp(r'^[w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegexp.hasMatch(value)) {
      return "Invalid Email address";
    }
    return null;
  }

  static String? validationPassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }
    if (value.length < 6) {
      return "password must be atleast 6 character long";
    }
    if (value.contains(RegExp(r'[!@#$%^&*(),.?"{}!<>]'))) {
      return "password must contain at least one special  character ";
    }
    if (value.contains(RegExp(r'[A-Z]'))) {
      return "password must contain at least one Uppercase  character ";
    }
    // ignore: valid_regexps
    if (value.contains(RegExp(r'[0-9'))) {
      return "password must contain at least one number  ";
    }
    return null;
  }

  static String? validationphonenumber(String? value) {
    if (value == null || value.isEmpty) {
      return "Phone number is required";
    }
    final phoneRegExp = RegExp(r'^\d{10}$');
    if (!phoneRegExp.hasMatch(value)) {
      return "Invalid PhoneNumber format(10 digits required)";
    }
    return null;
  }
}
