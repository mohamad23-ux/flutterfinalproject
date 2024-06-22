import '../../model/account/account_list_model.dart';
import '../../model/account/account_model.dart';
import '../base_services.dart';

abstract class AccountServices extends BaseServices {
  Future<void> getAllAccount();
  Future<void> getAccountById({required num accountId});
  Future<void> deleteAccount({required num accountId});
  Future<void> createAccount({required Account account});
  Future<void> updateAccount({required Account account});
}

class AccountSevicesImp extends AccountServices {
  @override
  Future<void> createAccount({required Account account}) async {
    print(account.toMap());
    response = await dio.post("$baseUrl/account", data: account.toJson());
    print(response.data);
  }

  @override
  Future<void> getAllAccount() async {
    response = await dio.get("$baseUrl/account");
    // print(response.data["data"]);
    AccountsList la = AccountsList.fromMap(response.data);
    print(la.accounts);
  }

  @override
  Future<void> deleteAccount({required num accountId}) async {
    response = await dio.delete("$baseUrl/account/$accountId");
    print(response.data);
  }

  @override
  Future<void> getAccountById({required num accountId}) async {
    response = await dio.get("$baseUrl/account/$accountId");
    Account a = Account.fromMap(response.data["data"]);
    print(a);
  }

  @override
  Future<void> updateAccount({required Account account}) async {
    response =
        await dio.put("$baseUrl/account/${account.id}", data: account.toJson());
    print(response.data);
  }
}
