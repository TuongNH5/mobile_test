import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_test/configs/constants/values/colors.dart';


abstract class WidgetCubit<State> extends Cubit<State> {
  void onWidgetCreated();

  WidgetCubit({required State widgetState}) : super(widgetState) {

    WidgetsBinding.instance.addPostFrameCallback((_) {
      onWidgetCreated();
    });
  }
  String language = 'vi';

  void showToast(
    String? message, {
    Toast toastLength = Toast.LENGTH_LONG,
    ToastGravity toastGravity = ToastGravity.CENTER,
    int timeInSecForIosWeb = 1,
    double? fontSize = 14,
    Color? backgroundColor,
    Color? textColor,
    bool webShowClose = false,
  }) {
    if ((message?.isNotEmpty ?? false) == true) {
      Fluttertoast.showToast(
          msg: message!,
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: backgroundColor,
          textColor: textColor,
          fontSize: fontSize);
    }
  }

  void showErrorToast(String? message) => showToast(message, backgroundColor: AppColors.red);

  void showSuccessToast(String? message) => showToast(message, backgroundColor: AppColors.green);

  void showNormalToast(String? message) =>
      showToast(message, backgroundColor: AppColors.grey, toastGravity: ToastGravity.BOTTOM);



  @override
  close() async {
    super.close();

    stream.drain();
  }


}

