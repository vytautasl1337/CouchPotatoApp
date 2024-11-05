import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied(path: 'api.env')
abstract class Env {
  @EnviedField(varName: 'API_key')
  static const String ApiKey = _Env.ApiKey;

  @EnviedField(varName: 'API_token')
  static const String APIToken = _Env.APIToken;
}
