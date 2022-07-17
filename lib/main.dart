import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:stalkr/application/main_bloc.dart';
import 'package:stalkr/application/main_event.dart';
import 'package:stalkr/application/main_state.dart';
import 'package:stalkr/core/di/service_locator.dart';
import 'package:stalkr/infra/account/account_repo.dart';

import 'ui/accounts_screen.dart';
import 'ui/add_account_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  await Firebase.initializeApp();
  await FirebaseAuth.instance.signInAnonymously();
  // try {
  //   await Firebase.initializeApp(
  //     name: "stalkr-30576",
  //     options: FirebaseOptions(
  //       appId: (Platform.isIOS || Platform.isMacOS)
  //           ? ""
  //           : "1:925868412119:android:4697d751544cbc82173492",
  //       messagingSenderId: "925868412119",
  //       apiKey: "AIzaSyD_0Z813WsyoOvON-Sstrjv6-cn4qW2f_U",
  //       projectId: "stalkr-30576",
  //     ),
  //   );
  // } on FirebaseException catch (e) {
  //   if (e.code == 'duplicate-app') {
  //     print('duplicate-app: $e');
  //   }
  // } catch (e) {
  //   print('firebase init error: $e');
  // }
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocConsumer(
        bloc: MainBloc(),
        listener: (BuildContext context, MainState state) async {
          if (state is onError) {
            // toast('error')
            //show snackbar
          }
          if (state is onAuthentication) {}
        },
        builder: (BuildContext context, MainState state) {
          Widget? w;
          state.maybeWhen(
            onLoadState: () {
              w = const Scaffold(body: Center(child: CircularProgressIndicator()));
            },
            onLogoutState: () {
              w = const Scaffold(body: Center(child: Text("Logged out")));
            },
            onLoggedInState: () async {
              MainBloc().addLoadingEvent();

              //w = MainScreen(emptyMessage: 'emptyMessage');
              w = const Scaffold(body: AccountsScreen());
            },
            orElse: () {},
          );
          return w ?? Container();
        },
      ),
    );
  }
}
