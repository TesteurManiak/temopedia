import 'package:connectivity_plus/connectivity_plus.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class ConnectivityInfo implements NetworkInfo {
  ConnectivityInfo({required this.connectivity});

  final Connectivity connectivity;

  @override
  Future<bool> get isConnected => connectivity.checkConnectivity().then(
        (result) =>
            result == ConnectivityResult.mobile ||
            result == ConnectivityResult.wifi ||
            result == ConnectivityResult.ethernet,
      );
}
