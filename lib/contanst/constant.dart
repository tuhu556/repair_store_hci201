class Constants {
  static final String patternPassword =
      r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,30}$";
  static final String patternUserId = r"^[A-Za-z][A-Za-z0-9_]{6,20}$";
  static final String patternEmail =
      r"^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$";

  //RegExp regex = RegExp(Constants.patternUserId);
  // if (!regex.hasMatch(value)) {
  //   return 'User ID consists of 6 to 20 characters, contains at least 1 number and does not contain special characters';
  // } else {
  //   return null;
  // }
}
