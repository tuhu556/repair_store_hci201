import 'package:flutter/material.dart';
import 'package:repair_app/contanst/color.dart';

class DialogApp extends StatelessWidget {
  final String title;
  final String message;
  final String subMessage;
  final String cancelText;
  final String okText;
  final Function()? cancelFunction;
  final Function()? okFunction;

  const DialogApp({
    required this.title,
    required this.message,
    this.subMessage = '',
    this.cancelText = '',
    required this.okText,
    required this.cancelFunction,
    required this.okFunction,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double borderRadius = 10;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: size.width * 0.8,
          decoration: ShapeDecoration(
            color: AppColors.colorFFFFFF,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: Text(
                  title,
                  style: TextStyle(
                    color: AppColors.color0B0C0C,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                color: Colors.black,
                width: 34,
                height: 4,
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.color666666,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ),
              (subMessage.isNotEmpty)
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(10, 15, 10, 30),
                      child: Text(subMessage,
                          style: TextStyle(
                            color: AppColors.color999999,
                            fontSize: 14,
                          ),
                          textAlign: TextAlign.center),
                    )
                  : Container(),
              SizedBox(
                height: 50,
              ),
              IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    (cancelText.isNotEmpty)
                        ? Expanded(
                            child: InkWell(
                              onTap: () {
                                Navigator.pop(context);
                                cancelFunction?.call();
                              },
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: AppColors.colorF2F2F3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft:
                                            Radius.circular(borderRadius)),
                                  ),
                                ),
                                width: double.infinity,
                                padding: EdgeInsets.all(14),
                                child: Center(
                                    child: Text(
                                  cancelText,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                )),
                              ),
                            ),
                          )
                        : Container(),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          okFunction?.call();
                        },
                        child: Container(
                          decoration: ShapeDecoration(
                            color: AppColors.colorEC407A,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(borderRadius),
                                  bottomLeft: (cancelText.isNotEmpty)
                                      ? Radius.circular(0)
                                      : Radius.circular(borderRadius)),
                            ),
                          ),
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          child: Center(
                            child: Text(
                              okText,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
