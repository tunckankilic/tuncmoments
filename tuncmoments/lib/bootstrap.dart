// import 'dart:async';
// import 'package:bloc/bloc.dart';
// import 'package:flutter/widgets.dart';
// import 'package:powersync_repository/powersync_repository.dart';
// import 'package:shared/shared.dart';

// typedef AppBuilder = FutureOr<Widget> Function(PowerSyncRepository);

// class AppBlocObserver extends BlocObserver {
//   const AppBlocObserver();

//   @override
//   void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
//     super.onChange(bloc, change);
//     logD('onChange(${bloc.runtimeType}, $change)');
//   }

//   @override
//   void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
//     logD('onError(${bloc.runtimeType}, $error, $stackTrace)');
//     super.onError(bloc, error, stackTrace);
//   }
// }

// Future<void> bootstrap(AppBuilder builder) async {
//   FlutterError.onError = (details) {
//     logD(details.exceptionAsString(), stackTrace: details.stack);
//   };

//   Bloc.observer = const AppBlocObserver();

//   await runZonedGuarded(() async {
//     WidgetsFlutterBinding.ensureInitialized();
//     final powerSyncRepository = PowerSyncRepository(env: env);
//     await powerSyncRepository.initialize();
//     runApp(await builder(powerSynchRepository));
//   }, (error, stack) {
//     logE(error.toString(), stackTrace: stack);
//   });

//   // // Add cross-flavor configuration here

//   // runApp(await builder());
// }
