import 'package:flutter/material.dart';

import 'package:espeats/src/Colors/colors.dart';
import 'package:espeats/src/Features/Presentation/Tabs/MyOrderTab/Components/empty_view.dart';
import 'package:espeats/src/Features/Presentation/Tabs/MyOrderTab/Components/list_order_views.dart';

class MyOrderTab extends StatefulWidget {
  const MyOrderTab({Key? key}) : super(key: key);

  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  final emptyOrderState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: gray,
        body: emptyOrderState
            ? EmptyOrderView()
            : const ListOrdersView());
  }
}

/*
CustomScrollView(
slivers = [
SliverAppBar(
elevation: 0.5,
leading: Text(''),
backgroundColor: Colors.white,
title: Text(
'My Order',
style: TextStyle(
color: primaryColor,
fontSize: 17,
fontWeight: FontWeight.w600,
),
),
),
SliverList(
delegate: SliverChildListDelegate([
Padding(
padding: EdgeInsets.symmetric(horizontal: 10.0),
child: Column(
children: [
_orders(context),
SizedBox(height: 40),
_checkoutResume(context),
],
),
),
]),
),
],
)

Widget _orders(BuildContext context) {
  return Column(
    children: [_cardOrder(context)],
  );
}

Widget _cardOrder(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(248, 248, 248, 1.0),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        Row(
          children: [_cardOrderTopContent()],
        ),
        Column(
          children: [
            _items(context),
            _items(context),
            _items(context),
            _items(context)
          ],
        ),
        _moreContent(context)
      ],
    ),
  );
}

Widget _cardOrderTopContent() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
          child: TextView(
              texto: "Little Creatures - Club Street",
              fontSize: 20.0,
              fontWeight: FontWeight.bold),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.location_on, color: gray, size: 16.0),
              TextView(
                  texto: "87 Botsford Circle Apt",
                  color: gray,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  width: 110.0,
                  height: 20.0,
                  child: createElevatedButton(
                      shape: StadiumBorder(),
                      color: Colors.orange,
                      labelColor: Colors.white,
                      labelButton: 'Free Delivery',
                      labelFontSize: 11.0))
            ],
          ),
        )
      ],
    ),
  );
}
Widget _items(context) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextView(
              texto: 'Special Gajananad Bhel',
              color: Colors.orange,
              fontWeight: FontWeight.w300,
              fontSize: 15.0),
          TextView(
              texto: 'Mixed vegetables, Chicken Egg',
              color: gray,
              fontWeight: FontWeight.w300,
              fontSize: 12.0)
        ],
      ),
      trailing: TextView(
          texto: '17.20 €',
          color: gray,
          fontWeight: FontWeight.w300,
          fontSize: 15.0),
    ),
  );
}
Widget _moreContent(context) {
  return Container(
    child: ListTile(
      title: TextView(
          texto: 'Add more items',
          color: pink,
          fontWeight: FontWeight.w600,
          fontSize: 17.0),
    ),
  );
}

Widget _checkoutResume(context) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(vertical: 10),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        _itemsCheckOutResume(
            title: 'Subtotal', value: '93.40 €', context: context),
        _itemsCheckOutResume(
            title: 'Tax & Fee', value: '3.00 €', context: context),
        _itemsCheckOutResume(
            title: 'Delivery', value: 'Free', context: context),
        _buttonCheckout(context)
      ],
    ),
  );
}

Widget _itemsCheckOutResume(
    {title = String, value = String, context = BuildContext}) {
  return Container(
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: ListTile(
        title: TextView(
            texto: title, fontWeight: FontWeight.w400, fontSize: 15.0),
        trailing: TextView(
            texto: value, fontWeight: FontWeight.w500, fontSize: 15.0),
      ));
}

Widget _buttonCheckout(context) {
  return Container(
    width: double.infinity,
    height: 45.0,
    margin: EdgeInsets.only(top: 10.0),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
          elevation: 0.5,
          primary: Colors.orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      onPressed: () {
        Navigator.pushNamed(context, 'checkout');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(
            margin: EdgeInsets.only(left: 50),
            child: TextView(
                texto: 'Pedir',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          Container(
            child: TextView(
                texto: '95.49 €',
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      ),
    ),
  );
}
*/
