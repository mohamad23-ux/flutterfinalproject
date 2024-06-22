import '../../model/category/category_list_model.dart';
import '../../model/category/category_model.dart';
import '../base_services.dart';

abstract class CategoryServices extends BaseServices {
  Future<void> getAllCategory();
  Future<void> getCategoryById({required num categoryId});
  Future<void> deleteCategory({required num categoryId});
  Future<void> createCategory({required Category category});
  Future<void> updateCategory({required Category category});
}

class CategoryServicesImp extends CategoryServices {
  @override
  Future<void> createCategory({required Category category}) async {
    response = await dio.post("$baseUrl/category", data: category.toJson());
    Category c = Category.fromMap(response.data["data"]);
    print(c);
  }

  @override
  Future<void> deleteCategory({required num categoryId}) async {
    response = await dio.delete("$baseUrl/category/$categoryId");
    Category c = Category.fromMap(response.data["data"]);

    print(c);
  }

  @override
  Future<CatrgoriesList> getAllCategory() async {
    response = await dio.get("$baseUrl/category");
    CatrgoriesList cl = CatrgoriesList.fromMap(response.data);
    return cl;
  }

  @override
  Future<void> getCategoryById({required num categoryId}) async {
    response = await dio.get("$baseUrl/category/$categoryId");
    Category c = Category.fromMap(response.data["data"]);

    print(c);
  }

  @override
  Future<void> updateCategory({required Category category}) async {
    response = await dio.put(
      "$baseUrl/category/${category.id}",
      data: category.toJson(),
    );
    Category c = Category.fromMap(response.data["data"]);

    print(c);
  }
}
