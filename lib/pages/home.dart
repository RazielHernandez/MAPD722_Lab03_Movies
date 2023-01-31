import 'package:flutter/material.dart';

class MovieViewList extends StatelessWidget {

  final List movies = [
    "Brave Heart",
    "Moonlight",
    "Lord of the rings",
    "Avatar",
    "The wolf of wall street",
    "Interestellar",
    "World War Z"
  ];

  final List moviesYears = [
    "1995",
    "2016",
    "2001",
    "2009",
    "2013",
    "2014",
    "2013"
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade400,
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            elevation: 5.5,
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(13.9),
                  ),
                  child: Icon(Icons.movie),
                ),
              ),
              trailing: Text("..."),
              title: Text(movies[index]),
              subtitle: Text(moviesYears[index]),
              onTap: () => debugPrint("Movie name: ${movies.elementAt(index)}"),
            ),
          );
        },
      )
    );
  }
}