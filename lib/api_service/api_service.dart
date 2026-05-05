class ApiService {
  String? _dio;
  static ApiService? _getApiServiceInstance;

  static ApiService getInstance() {
    if (_getApiServiceInstance == null) {
      _getApiServiceInstance = ApiService._create();
      return _getApiServiceInstance!;
    } else {
      return _getApiServiceInstance!;
    }
  }

  ApiService._() {
    // Private default constructor
    print("created");
  }

  String get dio => _dio ?? 'empty';

  set dio(String value) {
    _dio = value;
  }

  ApiService._create();
}
