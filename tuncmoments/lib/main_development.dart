import 'package:api_repository/api_repository.dart';
import 'package:powersync_repository/powersync_repository.dart';
import 'package:tuncmoments/app/app.dart';
import 'package:tuncmoments/bootstrap.dart';

void main() {
  const ApiRepository apiRepository = ApiRepository();
  bootstrap((powerSyncRepository) {}, isDev: true);
}
