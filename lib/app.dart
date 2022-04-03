import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/services/error_report_service.dart';
import 'constants/app_themes.dart';
import 'pages.dart';
import 'screens/screen1/screen1.dart';

class InterviewApp extends StatelessWidget {
  const InterviewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Interview app',
      theme: AppThemes.theme,
      initialRoute: '$Screen1',
      getPages: pages,
      debugShowCheckedModeBanner: false,
      initialBinding: BindingsBuilder.put(() => ErrorReportService()),
    );
  }
}
