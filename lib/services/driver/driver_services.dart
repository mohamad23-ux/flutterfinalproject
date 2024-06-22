import '../../model/driver/driver_list_model.dart';
import '../../model/driver/driver_model.dart';
import '../base_services.dart';

abstract class DriverServices extends BaseServices {
  Future<void> getAllDriver();
  Future<void> getDriverById({required num driverId});
  Future<void> deleteDriver({required num driverId});
  Future<void> createDriver({required Driver driver});
  Future<void> updateDriver({required Driver driver});
}

class DriverServicesImp extends DriverServices {
  @override
  Future<void> createDriver({required Driver driver}) async {
    response = await dio.post("$baseUrl/driver", data: driver.toJson());
    Driver c = Driver.fromMap(response.data["data"]);
    print(c);
  }

  @override
  Future<void> deleteDriver({required num driverId}) async {
    response = await dio.delete("$baseUrl/driver/$driverId");
    Driver c = Driver.fromMap(response.data["data"]);

    print(c);
  }

  @override
  Future<void> getAllDriver() async {
    response = await dio.get("$baseUrl/driver");
    DriverList cl = DriverList.fromMap(response.data);
    print(cl);
  }

  @override
  Future<void> getDriverById({required num driverId}) async {
    response = await dio.get("$baseUrl/category/$driverId");
    Driver c = Driver.fromMap(response.data["data"]);

    print(c);
  }

  @override
  Future<void> updateDriver({required Driver driver}) async {
    response = await dio.put(
      "$baseUrl/category/${driver.id}",
      data: driver.toJson(),
    );
    Driver c = Driver.fromMap(response.data["data"]);

    print(c);
  }
}
