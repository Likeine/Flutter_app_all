import 'package:flutter/material.dart';
import 'package:flutter_example/Provider/Album_Provider.dart';
import 'package:provider/provider.dart';
import '../model/Album.dart';

class AlbumView extends StatefulWidget
{
  const AlbumView({super.key});

  @override
  State<AlbumView> createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView>
{
  late List<Album> albumList;

  @override
  Widget build(BuildContext context)
  {
    return ChangeNotifierProvider<AlbumProvider>
    (
      create: ((context) => AlbumProvider()),
      child: Scaffold
      (
        appBar: AppBar
        (
          title: const Text("Provider"),
        ),
        body: Consumer<AlbumProvider>
        (
          builder: (context, provider, child)
          {
            albumList = provider.getAlbumList().cast<Album>();
            return ListView.builder
            (
              itemCount: albumList.length,
              itemBuilder: (context, index)
              {
                return Container
                (
                  padding: const EdgeInsets.all(10),
                  child: Text("${albumList[index].id} : ${albumList[index].title}"),
                );
              }
            );
          }
        )
      ),
    );
  }
}
