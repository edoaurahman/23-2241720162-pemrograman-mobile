import 'dart:async';
import 'package:books/navigation_dialog.dart';
import 'package:books/navigation_first.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:async/async.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "2241720162 - Ridho Aulia' Rahman",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NavigationDialogScreen(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  _FuturePageState createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  late Completer completer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("2241720162 - Ridho Aulia' Rahman"),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            ElevatedButton(
              onPressed: () async {
                handleError();
              },
              child: const Text('GO!'),
            ),
            const Spacer(),
            Text(result),
            const Spacer(),
            const CircularProgressIndicator(),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Future<Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/zA36EAAAQBAJ';

    Uri url = Uri.https(authority, path);
    return await get(url);
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  Future getNumber() {
    completer = Completer<int>();
    calculate2();
    return completer.future;
  }

  Future calculate() async {
    await Future.delayed(const Duration(seconds: 5));
    completer.complete(42);
  }

  Future calculate2() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
      // throw Exception();
    } catch (_) {
      completer.completeError({});
    }
  }

  void returnFG() {
    FutureGroup<int> futureGroup = FutureGroup<int>();
    futureGroup.add(returnOneAsync());
    futureGroup.add(returnTwoAsync());
    futureGroup.add(returnThreeAsync());

    futureGroup.close();
    futureGroup.future.then((List<int> value) {
      int total = 0;
      for (int i = 0; i < value.length; i++) {
        total += value[i];
      }
      setState(() {
        result = total.toString();
      });
    });
  }

  void returnFG2() {
    final futures = Future.wait<int>([
      returnOneAsync(),
      returnTwoAsync(),
      returnThreeAsync(),
    ]);
    futures.then((List<int> value) {
      int total = 0;
      for (int i = 0; i < value.length; i++) {
        total += value[i];
      }
      setState(() {
        result = total.toString();
      });
    });
  }

  Future returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  Future handleError() async {
    try {
      await returnError();
    } catch (e) {
      setState(() {
        result = e.toString();
      });
    } finally {
      print('Complete');
    }
  }
}
