import 'base_exception.dart';

class NotFoundException extends BaseException {
  NotFoundException([String message = '']) : super(message);
}
