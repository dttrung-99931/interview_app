import 'dart:async';

import 'package:flutter/material.dart';

import 'app.dart';
import 'exceptions/error_handler.dart';

void main() {
  // Run app in a zooned guarded to catch global exceptions
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    setupErrorHandlers();
    runApp(const InterviewApp());
  }, (error, stacktrace) {
    ErrorHandler.handleAsyncError(error, stacktrace);
  });
}

void setupErrorHandlers() {
    // Setup error handler
  FlutterError.onError = ErrorHandler.handleSyncError;
  // Setup error ui builder that builds ui to notify errors to users 
  ErrorWidget.builder = ErrorHandler.errorWidgetBuilder;
}
