import 'package:boxly/core/local_storage/local_storage_service.dart';

class InitializeApp {
  static Future<void> initialize() async {
    await LocalStorageService.init();
  }
}
