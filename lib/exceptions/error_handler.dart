import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:interview_app/services/error_report_service.dart';
import '../../exceptions/no_internet.dart';
import '../../utils/log_utils.dart';
import '../../utils/ui_utils.dart';

class ErrorHandler {
  static void handleAsyncError(Object exception, [StackTrace? stackTrace]) {
    logd('Async Error');
    handleError(exception, stackTrace);
  }

  static void handleSyncError(FlutterErrorDetails details) {
    logd('Sync Error');
    handleError(details.exception, details.stack);
  }

  static void handleError(Object exception, [StackTrace? stackTrace]) {
    logd(
      '${exception.runtimeType} ${exception.toString()}',
    ); // Log '{exception class name} {exception message}'
    Get.dialog(buildErrorWidgetByException(exception));
    reportError(exception, stackTrace);
  }

  static void reportError(Object exception, [StackTrace? stackTrace]) {
    try {
      final errorReportService = Get.find<ErrorReportService>();
      errorReportService.reportError(
          exception.toString(), stackTrace?.toString() ?? '');
    }
    // IGnore
    catch (_) {}
  }

  static Widget errorWidgetBuilder(FlutterErrorDetails details) {
    return buildErrorWidgetByException(details.exception);
  }

  static Widget buildErrorWidgetByException(Object exception) {
    if (exception is NoInternetException) {
      return UIUtils.buildErrorwidget('No internet connection');
    }
    return UIUtils.buildErrorwidget('Something went wrong.');
  }
}
