import '../../model/customer/customer_list_model.dart';
import '../../model/customer/customer_model.dart';
import '../base_services.dart';

abstract class CustomerServices extends BaseServices {
  Future<void> getAllCategory();
  Future<void> getCategoryById({required num customerId});
  Future<void> deleteCategory({required num customerId});
  Future<void> createCategory({required Customer customer});
  Future<void> updateCategory({required Customer customer});
}

class CustomerServicesImp extends CustomerServices {
  @override
  Future<void> createCategory({required Customer customer}) async {
    response = await dio.post("$baseUrl/customer", data: customer.toJson());
    Customer c = Customer.fromMap(response.data["data"]);
    print(c);
  }

  @override
  Future<void> deleteCategory({required num customerId}) async {
    response = await dio.delete("$baseUrl/customer/$customerId");
    Customer c = Customer.fromMap(response.data["data"]);
  
    print(c);
  }

  @override
  Future<void> getAllCategory() async {
    response = await dio.get("$baseUrl/customer");
    CustomerList cl = CustomerList.fromMap(response.data);
    print(cl);
  }

  @override
  Future<void> getCategoryById({required num customerId}) async {
    response = await dio.get("$baseUrl/customer/$customerId");
    Customer c = Customer.fromMap(response.data["data"]);

    print(c);
  }

  @override
  Future<void> updateCategory({required Customer customer}) async {
    response = await dio.put(
      "$baseUrl/customer/${customer.id}",
      data: customer.toJson(),
    );
    Customer c = Customer.fromMap(response.data["data"]);

    print(c);
  }
}
