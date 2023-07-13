import 'package:flutter/material.dart';

//Colors
import '../../../../Colors/colors.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.close, color:Colors.black, size: 40.0),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      alignment: Alignment.centerLeft,
                      child: Text("Buscar", style: Theme.of(context).textTheme.headlineSmall)
                    ),
                    _searchInput(context),
                    const SizedBox(
                      height: 30.0,
                    ),
                    headerDoubleText(context,"Búsqueda reciente","Limpiar todo"),
                    _sliderRecentSearch()
                  ],
                ),
              )
            ]
          ))
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context){
  return Container(
    height: 40.0,
    margin: const EdgeInsets.only(top: 10.0),
    padding: const EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(20.0)
    ),
    child: const TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5.0),
        prefixIcon: Icon(Icons.search, color:gray),
        hintText: 'Buscar',
        border: OutlineInputBorder(borderSide:  BorderSide.none)
      ),
    ),
  );
}

Widget headerDoubleText(BuildContext context, String? textHeader, String? textAction) {
  return Container(
    child: Row(
      children: [
        Text(textHeader!, style: Theme.of(context).textTheme.titleLarge),
        const Spacer(),
        Text(textAction!, style: const TextStyle(
            color: orange,
            fontWeight: FontWeight.w500,
            fontSize: 15.0
        ))
      ],
    ),
  );
}

Widget _sliderRecentSearch(){
  return Container(
    margin: const EdgeInsets.only(top: 5.0),
    height: 190.0,
    child: ListView.builder(
      itemCount: 4,
        scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index){
          return _card(context);
        }),
  );
}

Widget _card(BuildContext context){
  return Container(
    margin: const EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
            child: const Image(
              width: 160.0,
              height: 120.0,
              fit: BoxFit.cover,
              image: NetworkImage('https://images.unsplash.com/photo-1585703900468-13c7a978ad86?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'))
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: const Text("Secos del gordo", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17.0
              )),
            ),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text("Alado de las carpas", style: Theme.of(context).textTheme.bodySmall)
            )
          ],
        )
      ],
    ),
  );
}

Widget _cardVertical(BuildContext context){
  return Container(
    margin: const EdgeInsets.all(5.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: const Image(
                width: 160.0,
                height: 120.0,
                fit: BoxFit.cover,
                image: NetworkImage('https://images.unsplash.com/photo-1618219877704-18411f61719d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=871&q=80'))
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: const Text("Secos del gordo", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0
              )),
            ),
            Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: Text("Alado de las carpas", style: Theme.of(context).textTheme.bodySmall)
            )
          ],
        )
      ],
    ),
  );
}