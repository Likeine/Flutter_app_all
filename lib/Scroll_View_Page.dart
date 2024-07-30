import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget
{
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  final ScrollController _scrollController = ScrollController();
  List _data = [];
  int _page = 1;
  bool _isLoading = false;
  bool _hasMoreData = false;

  @override
  void initState()
  {
    super.initState();
    _fetchData();
    _scrollController.addListener((){
      if (_scrollController.position.extentAfter < 300 && !_isLoading && _hasMoreData)
      {
        _fetchData();
      }
    });
  }

  Future<void> _fetchData() async
  {
    setState(() {
      _isLoading = true;
    });
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums?_page=$_page&_limit=10'));
    if(response.statusCode == 200)
    {
      List newData = json.decode(response.body);
      setState(()
      {
        _data.addAll(newData);
        _isLoading = false;
        if(newData.length < 10)
        {
          _hasMoreData = false;
        }
        else
        {
          _page++;
        }
      });
    }
    else
    {
      setState(()
      {
        _isLoading = false;
        _hasMoreData = false;
      });
    }
  }

  @override
  void dispose()
  {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context)
  {
    return _data.isEmpty && _isLoading
    ? Center(child: CircularProgressIndicator()) : ListView.builder
    (
      itemCount: _data.length, itemBuilder: (context, index)
      {
        if (index == _data.length)
      }
    )

  }
}
