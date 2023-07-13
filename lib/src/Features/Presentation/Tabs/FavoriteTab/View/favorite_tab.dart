import 'package:flutter/material.dart';
import 'package:espeats/src/Colors/colors.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({Key? key});

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
            backgroundColor: Colors.white,
            title: Text(
              "My Favourites",
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    ListTile(
                      leading: Image.network(
                          'https://images.unsplash.com/photo-1581546104493-f7e013a136ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                      title: Text("Don Diego"),
                      subtitle: Text("Apanado"),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("8.4"),
                          Text("(233 ratings)"),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Acción del botón
                      },
                      child: Text('Delivery'),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      leading: Image.network(
                          'https://images.unsplash.com/photo-1581546104493-f7e013a136ba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60'),
                      title: Text("Camarones Apanados"),
                      subtitle: Text("camarones"),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text("9.2"),
                          Text("(150 ratings)"),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Acción del botón
                      },
                      child: Text('Delivery'),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
