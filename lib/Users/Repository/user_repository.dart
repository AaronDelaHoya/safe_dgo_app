import 'dart:async';

import 'package:safe_dgo_app/Users/Repository/user_provider.dart';


class UserRepository{
  // final title = '';
  final userProviders = UserProviders();

  Future saveNewUser(name, password) => userProviders.createUser(name, password);
}