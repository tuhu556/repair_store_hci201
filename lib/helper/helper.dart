import 'package:flutter/material.dart';
import 'package:repair_app/components/dialog_app.dart';
import 'package:repair_app/components/text_field_input.dart';
import 'package:repair_app/contanst/color.dart';

class Helpers {
  Helpers._();
  static final Helpers shared = Helpers._();

  bool _isDialogLoading = false;

  void hideKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  void showDialogProgress(BuildContext context) {
    if (!_isDialogLoading) {
      _isDialogLoading = true;
      showDialog(
        //prevent outside touch
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          //prevent Back button press
          return WillPopScope(
            onWillPop: () {
              return Future<bool>.value(false);
            },
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              content: Container(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              ),
            ),
          );
        },
      );
    }
  }

  void hideDialogProgress(BuildContext context) {
    if (_isDialogLoading) {
      _isDialogLoading = false;
      Navigator.pop(context);
    }
  }

  void showDialogError(
    BuildContext context, {
    String title = '',
    required String message,
    String subMessage = '',
    String okText = '',
    Function()? okFunction,
  }) {
    _baseDialogMessages(context,
        title: title.isNotEmpty ? title : 'Error',
        message: message,
        subMessage: subMessage,
        cancelText: '',
        okText: okText.isNotEmpty ? okText : 'OK',
        cancelFunction: null,
        okFunction: okFunction);
  }

  void showDialogSuccess(
    BuildContext context, {
    String title = '',
    required String message,
    String subMessage = '',
    String okText = '',
    Function()? okFunction,
  }) {
    _baseDialogMessages(context,
        title: title.isNotEmpty ? title : 'Success',
        message: message,
        subMessage: subMessage,
        cancelText: '',
        okText: okText.isNotEmpty ? okText : 'OK',
        cancelFunction: null,
        okFunction: okFunction);
  }

  void _baseDialogMessages(
    BuildContext context, {
    required String title,
    required String message,
    String subMessage = '',
    required String cancelText,
    required String okText,
    Function()? cancelFunction,
    Function()? okFunction,
  }) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (ctx) => DialogApp(
            title: title,
            message: message,
            subMessage: subMessage,
            cancelText: cancelText,
            okText: okText,
            cancelFunction: cancelFunction,
            okFunction: okFunction));
  }

  Widget textFieldSearch(BuildContext context,
      {Function(String?)? onSave,
      TextEditingController? controllerText,
      Function(String?)? onChange,
      Widget? suffixIcon,
      Widget? prefixIcon}) {
    return TextFieldInput(
      onChanged: onChange,
      onSave: onSave,
      controllerText: controllerText,
      textInputAction: TextInputAction.done,
      hint: 'Search',
      hintColor: AppColors.colorC5C5C5,
      validatePassword: (value) {
        if (value == null || value.isEmpty) {
          return 'Please input something';
        }
      },
      suffixIcon: suffixIcon,
      prefixIcon: prefixIcon,
    );
  }

  Widget textFieldUserID(BuildContext context,
      {Function(String?)? onSave,
      TextEditingController? controllerText,
      Function(String?)? onChange,
      Widget? suffixIcon}) {
    return TextFieldInput(
      onChanged: onChange,
      onSave: onSave,
      controllerText: controllerText,
      textInputAction: TextInputAction.done,
      hint: 'User ID',
      hintColor: AppColors.colorC5C5C5,
      validatePassword: (value) {
        if (value == null || value.isEmpty) {
          return 'Please input User ID';
        }
      },
      suffixIcon: suffixIcon,
    );
  }

  Widget textFieldPassword(BuildContext context,
      {Function(String?)? onSave,
      TextEditingController? controllerText,
      Function(String?)? onChange,
      Widget? suffixIcon,
      bool? obscureText}) {
    return TextFieldInput(
      onChanged: onChange,
      onSave: onSave,
      controllerText: controllerText,
      textInputAction: TextInputAction.done,
      hint: 'Password',
      hintColor: AppColors.colorC5C5C5,
      validatePassword: (value) {
        if (value == null || value.isEmpty) {
          return 'Please input Password';
        }
      },
      suffixIcon: suffixIcon,
      obscureText: obscureText,
    );
  }
}
