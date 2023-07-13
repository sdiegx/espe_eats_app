import 'package:flutter/material.dart';
import './../../../../../Colors/colors.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({super.key});

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGray,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Text(''),
            backgroundColor: bgGray,
            title: Text(
              "Probando",
              style: TextStyle(
                  fontSize: 40, fontWeight: FontWeight.w600, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }
}
