class ApiServiceUsingFactoryConstructor {
  String? _dio;
  static ApiServiceUsingFactoryConstructor? _getApiServiceInstance;

  factory ApiServiceUsingFactoryConstructor() {
    if (_getApiServiceInstance == null) {
      _getApiServiceInstance = ApiServiceUsingFactoryConstructor._create();
      return _getApiServiceInstance!;
    } else {
      return _getApiServiceInstance!;
    }
  }

  String get dio => _dio ?? 'empty';

  set dio(String value) {
    _dio = value;
  }

  ApiServiceUsingFactoryConstructor._create();
}
