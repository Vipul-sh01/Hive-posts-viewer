import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/Constants/Constants.dart';
import 'viewmodels/PostViewModel.dart';
import 'views/PostListScreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PostViewModel(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: AppConstants.primaryColor,
        ),
        title: 'Hive Blog Posts',
        home: PostListScreen(),
      ),
    );
  }
}
