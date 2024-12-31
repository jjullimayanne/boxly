import 'package:get_storage/get_storage.dart';

class LocalStorageService {
  final GetStorage _storage;

  // Inicializando o GetStorage
  LocalStorageService() : _storage = GetStorage();

  // Método para salvar o status de "showOnboarding"
  Future<void> saveShowOnboarding(bool value) async {
    // Escrevendo no armazenamento local de forma assíncrona
    await _storage.write('showOnboarding', value);
  }

  // Método para ler o status de "showOnboarding"
  bool? getShowOnboarding() {
    // Lendo o valor do armazenamento local
    return _storage.read('showOnboarding');
  }

  // Método para inicializar o GetStorage
  static Future<void> init() async {
    await GetStorage.init(); // Inicializando o GetStorage
  }
}
