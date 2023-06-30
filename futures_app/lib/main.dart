import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:futures_app/providers/user_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<UserProvider>(
        create: (_) => UserProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    String? name = context.watch<UserProvider>().user?.name;

    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Beautiful'),
        ),
        body: Center(
          child: name == null ? const CupertinoActivityIndicator() : Text(name),
        ),
      ),
    );
  }
}
