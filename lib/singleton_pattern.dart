import 'package:flutter_singleton_design_pattern/api_service/api_service.dart';
import 'package:flutter_singleton_design_pattern/api_service/api_service_using_factory_constructor.dart';

void main() {
  // ApiService apiService = ApiService();
  // ApiService apiService1 = ApiService();

  // Singleton using named constructor by making default constructor to private
  ApiService apiService1 = ApiService.getInstance();
  ApiService apiService2 = ApiService.getInstance();
  ApiService apiService3 = ApiService.getInstance();

  print(apiService1.hashCode);
  print(apiService2.hashCode);
  print(apiService3.hashCode);

  // Singleton using factory constructor
  ApiServiceUsingFactoryConstructor apiServiceFactory1 =
      ApiServiceUsingFactoryConstructor();
  ApiServiceUsingFactoryConstructor apiServiceFactory2 =
      ApiServiceUsingFactoryConstructor();
  ApiServiceUsingFactoryConstructor apiServiceFactory3 =
      ApiServiceUsingFactoryConstructor();

  print(apiServiceFactory1.hashCode);
  print(apiServiceFactory2.hashCode);
  print(apiServiceFactory3.hashCode);

  /*
    Singleton ဖြစ်မဖြစ်သိချင်ရင် ဒီ object တွေက တစ်ခုတည်း ဖြစ်မဖြစ် သိချင်ရင်
    hashCode ကို ကြည့်

    hashCode တွေက တူနေလိမ့်မယ်။
  * */
}
