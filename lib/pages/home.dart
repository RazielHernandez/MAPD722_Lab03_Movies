import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Movies Carlos Hernandez',
          style: TextStyle(color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54),
        brightness: Brightness.light,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.cloud_queue), onPressed: () {})
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //_buildJournalHeaderImage(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(         
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //_buildJournalEntry(),
                  Divider(),
                  //_buildJournalWeather(),
                  Divider(),
                  //_buildJournalTags(),
                  Divider(),
                  //_buildJournalFooterImages(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}