import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static const String _title = 'Drawer Flutter ';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text('Act 3 Drawer Frias'),
        backgroundColor: const Color(0xffde93a6),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              // <-- SEE HERE
              decoration: BoxDecoration(color: const Color(0xffbe8191)),
              accountName: Text(
                "Frias Rojo Michelle",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              accountEmail: Text(
                "a.20308051280493@cbtis128.edu.mx",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              currentAccountPicture: FlutterLogo(),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
              ),
              title: const Text('Cuenta'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_bag,
              ),
              title: const Text('Joyeria oro'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.shopping_bag,
              ),
              title: const Text('Joyeria plata'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.store,
              ),
              title: const Text('Bisuteria'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(
                Icons.store,
              ),
              title: const Text('Sucursales'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            AboutListTile(
              // &lt;-- SEE HERE
              icon: Icon(
                Icons.info,
              ),
              child: Text('Acerca  de la app'),
              applicationIcon: Icon(
                Icons.local_play,
              ),
              applicationName: 'Mi aplicacion chida',
              applicationVersion: '1.0.25',
              applicationLegalese: '© 2023 Compañia',
              aboutBoxChildren: [
                ///Content goes here...
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                _key.currentState!.openDrawer(); //<-- SEE HERE
              },
              child: const Text(
                'Elevated Button 1',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
