import 'package:internet_connection_checker/internet_connection_checker.dart';

abstract interface class Connectionchecker {
  Future<bool> get isConnected;
}

class ConnectionCheckerImpl implements Connectionchecker {
  final InternetConnectionChecker internetConnectionChecker;
  ConnectionCheckerImpl(this.internetConnectionChecker);

  @override
  Future<bool> get isConnected async =>
      await internetConnectionChecker.hasConnection;
}
