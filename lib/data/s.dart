




import 'dart:async';

import 'package:flutter/material.dart';
import 'package:paging/paging.dart';

class testdata extends StatefulWidget {
 

  @override
  _testdataState createState() => _testdataState();
}

class _testdataState extends State<testdata> {

  Future<List<String>> pageData(int previousCount) async {
    await Future.delayed(const Duration(seconds: 0, milliseconds: 2000));
    List<String> dummyList = [];
    if (previousCount < 80) {
      // stop loading after 30 items
      for (int i = previousCount; i < previousCount + _COUNT; i++) {
        dummyList.add('Item $i');
      }
    }
    return dummyList;
  }
 static const int _COUNT = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pagination List')),
      body: Pagination<String>(
        pageBuilder: (currentSize) => pageData(currentSize),
        itemBuilder: (index, item){
          return ListTile(title: Text(item));
        
        },
      ),
    );
  }
}