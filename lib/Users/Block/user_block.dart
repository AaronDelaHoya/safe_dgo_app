import 'package:safe_dgo_app/Users/Repository/user_repository.dart';

class UserBloc {
  final _repository = UserRepository();

  saveUser(String name, String password) {
    _repository.saveNewUser(name, password);
  }
}

final bloc = UserBloc();