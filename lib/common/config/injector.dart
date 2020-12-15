import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_functions/cloud_functions.dart';
import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:connectivity/connectivity.dart';

import 'injector.config.dart' as injection_config;

final getIt = GetIt.instance;

Future<void> setupInjections() async {
  final sharedPreferences = await SharedPreferences.getInstance();

  final Dio dio = Dio();
  // this code originally from rest_client.dart setup()
  // dio.interceptors.add(TokenInterceptor());
  // dio.options.baseUrl = environment['baseUrl'];
  // dio.options.headers['content-type'] = 'application/json';
  // await Firebase.initializeApp();
  // final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  // final FirebaseFunctions cloudFunctions =FirebaseFunctions.instanceFor(region: 'asia-east2');

  // final FirebaseFirestore firestore = FirebaseFirestore.instance;
  // final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // final GoogleSignIn googleSignIn = GoogleSignIn();

  getIt.registerLazySingleton(() => Connectivity());
  getIt.registerLazySingleton(() => sharedPreferences);
  getIt.registerLazySingleton(() => dio);
  // getIt.registerLazySingleton(() => firebaseStorage);
  // getIt.registerLazySingleton(() => cloudFunctions);
  // getIt.registerLazySingleton(() => firestore);
  // getIt.registerLazySingleton(() => googleSignIn);
  // getIt.registerLazySingleton(() => firebaseAuth);
  configure();
}

@injectableInit
void configure() => injection_config.$initGetIt(getIt);
