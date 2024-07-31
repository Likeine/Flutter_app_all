import 'package:flutter/material.dart';
import 'My_First_Page.dart';
import 'Colum_row.dart';
import 'Stack.dart';
import 'First_Last.dart';
import 'Align.dart';
import 'Alert.dart';
import 'Image.dart';
import 'Button.dart';
import 'Navigator.dart';
import 'List_View.dart';
import 'Scroll_View_Page.dart';
import 'Bottom_Navigator_Bar.dart';
import 'Form_Home_Page.dart';
import 'View/Album_Provider_View.dart'; // Import AlbumView

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.first_page),
              title: const Text('My First Page'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFirstPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.view_column),
              title: const Text('Column Row'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ColumnRowPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.layers),
              title: const Text('Stack'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const StackPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text('Creative'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Creative()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.add_box),
              title: const Text('Align'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AlignView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.warning),
              title: const Text('Alert'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Alert()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.image),
              title: const Text('Image'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ImageView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.smart_button),
              title: const Text('Button'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ButtonView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.move_up),
              title: const Text('Navigator'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NavigatorView()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('List View'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ListPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.data_object),
              title: const Text('Scrollview Pagination'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ScrollviewPagination()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.border_bottom),
              title: const Text('Navigator Bar'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NavigatorBar()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.input),
              title: const Text('Form'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FormPage()),
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.album),
              title: const Text('Albums'), // Label for the new item
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AlbumView()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}