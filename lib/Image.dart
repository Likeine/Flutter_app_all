import 'package:flutter/material.dart';

class ImageView extends StatefulWidget
{
  const ImageView({super.key});

  @override
  State<ImageView> createState() => _ImageViewState();
}

class _ImageViewState extends State<ImageView>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text("이미지 앱 바입니다."),
      ),
      body: Container
      (
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Image.network('https://media.tenor.com/VkGE6OgHhTMAAAAi/maxwell-maxwell-cat.gif'),
      ),
    );
  }
}
