import 'dart:async';


class UserRepository{
  // final title = '';
  final userProviders = UserProviders();

  Future saveNewUser(name, password) => userProviders.createUser(name, password);
}