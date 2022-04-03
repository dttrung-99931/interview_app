import 'package:interview_app/exceptions/base_exception.dart';

class NoInternetException extends BaseException {
  NoInternetException([String message = '']) : super(message);
}
