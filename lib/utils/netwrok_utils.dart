import 'package:connectivity/connectivity.dart';
import '../exceptions/no_internet.dart';

class NetworkUtils {
  /// Ensure internet connection
  /// 
  /// throw [NoInternetException] if there's no internet connection  
  static Future<void> ensureInternetConnection() async {
    // Connectivity() will return singleton instance under the hook
    var conectivity = Connectivity(); 
    var conectivityResult = await conectivity.checkConnectivity();
    if (conectivityResult == ConnectivityResult.none) {
      throw NoInternetException();
    }
  }
}
