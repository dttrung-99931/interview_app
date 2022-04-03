import 'dart:developer';

void logd(Object msg, [String tag = '']) {
  var logMsg = '';
  if (tag != '') {
    logMsg = '@@ Debug: $tag $msg';
  } else {
    logMsg = '@@ Debug: $msg';
  }
  log(logMsg);
}

void loge(Object msg, [String tag = '']) {
  var logMsg = '';
  if (tag != '') {
    logMsg = '@@ Error: $tag $msg';
  } else {
    logMsg = '@@ Error: $msg';
  }
  log(logMsg);
}
