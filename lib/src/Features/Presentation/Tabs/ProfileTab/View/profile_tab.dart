import 'package:espeats/src/Colors/colors.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_header()],
      ),
    );
  }
}

Widget _header() {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      double height = constraints.maxWidth > 600 ? 300 : 250;
      return Container(
          height: height,
          color: bgGray,
          padding: EdgeInsets.all(50),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGVyZmlsfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                radius: 50,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        Text(
                          'Lusho Espinoza',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chevron_right,
                              color: gray,
                            )),
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 20.0),
                      height: 20,
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: pink,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        child: Row(children: [
                          Image(
                            image: NetworkImage(
                                'https://cdn-icons-png.flaticon.com/128/3916/3916808.png'),
                            width: 16,
                            height: 16,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5),
                            child: Text(
                              'VIP Member',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.white),
                            ),
                          )
                        ]),
                      ))
                ],
              )
            ],
          ));
    },
  );
}
