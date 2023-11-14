import 'dart:math';

import 'package:dependency_injection/services/constants/easyLocalization_constants.dart';
import 'package:dependency_injection/services/network_service.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'model/joke_model.dart';
import 'services/serviceLocator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Joke? joke;
  bool isLoaded = false;
  @override
  void initState() {
    getIt<NetworkImpl>().getData().then((value) {
      joke = value;
      isLoaded = true;
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoaded
            ? Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(joke!.id.toString()),
                  Text(joke!.type),
                  Text(joke!.setup),
                  Text(joke!.punchline),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text('hello').tr(),
                  const SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        setState(() {
                          
                        });
                        context.setLocale(localesList[getIt<Random>().nextInt(localesList.length)]); // til o'zgartirish uchun
                      },
                      child: Container(
                        height: 50,
                        width: 100,
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: const Text("Change language"),
                      ))
                ],
              )
            : const CircularProgressIndicator(),
      ),
    );
  }
}
