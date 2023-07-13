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
      body: SingleChildScrollView(
        child: Column(
          children: [
            GestureDetector(
                onTap: () => Navigator.pushNamed(context, 'profile-detail'),
                child: _header()),
            _contentProfile()
          ],
        ),
      ),
    );
  }
}

Widget _header() {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      double height = constraints.maxWidth > 600 ? 200 : 160;
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

Widget _contentProfile() {
  return Container(
    padding: EdgeInsets.all(10),
    child: Column(children: [
      ListTile(
        leading: Image(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/3916/3916808.png'),
          width: 29,
          height: 29,
        ),
        title: Text(
          'Notificaciones',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: gray,
          ),
          onPressed: () {},
        ),
      ),
      ListTile(
        leading: Image(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/7653/7653682.png'),
          width: 29,
          height: 29,
        ),
        title: Text(
          'Método de Pago',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: gray,
          ),
          onPressed: () {},
        ),
      ),
      ListTile(
        leading: Image(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/3916/3916808.png'),
          width: 29,
          height: 29,
        ),
        title: Text(
          'Historial',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: gray,
          ),
          onPressed: () {},
        ),
      ),
      ListTile(
        leading: Image(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/8770/8770923.png'),
          width: 29,
          height: 29,
        ),
        title: Text(
          'Mi código de promoción',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: gray,
          ),
          onPressed: () {},
        ),
      ),
      SizedBox(height: 50),
      ListTile(
        leading: Image(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/9811/9811205.png'),
          width: 29,
          height: 29,
        ),
        title: Text(
          'Configuración',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: gray,
          ),
          onPressed: () {},
        ),
      ),
      ListTile(
        leading: Image(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/3917/3917717.png'),
          width: 29,
          height: 29,
        ),
        title: Text(
          'Invitar amigos',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: gray,
          ),
          onPressed: () {},
        ),
      ),
      ListTile(
        leading: Image(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/3917/3917673.png'),
          width: 29,
          height: 29,
        ),
        title: Text(
          'Centro de ayuda',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: gray,
          ),
          onPressed: () {},
        ),
      ),
      ListTile(
        leading: Image(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/3916/3916714.png'),
          width: 29,
          height: 29,
        ),
        title: Text(
          'Sobre nosotros',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: gray,
          ),
          onPressed: () {},
        ),
      ),
      ListTile(
        leading: Image(
          image: NetworkImage(
              'https://cdn-icons-png.flaticon.com/128/3914/3914420.png'),
          width: 29,
          height: 29,
        ),
        title: Text(
          'Terminos y condiciones',
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        trailing: IconButton(
          icon: Icon(
            Icons.chevron_right,
            color: gray,
          ),
          onPressed: () {},
        ),
      ),
    ]),
  );
}

