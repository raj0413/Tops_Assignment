import 'package:flutter/material.dart';

class searchBar extends StatefulWidget {
  const searchBar({super.key});

  @override
  State<searchBar> createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SearchBar"),
      actions: [
        IconButton(onPressed: (){
          showSearch(context: context, delegate: CustomSearchDelegate());
        }, icon: Icon(Icons.search))
      ],),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate{

  List names = ["Apple" , "Mango" , "Papaya" , "Kiwi" , "Watermelon" , "car" , "Bike" , "Cooler" , "fruits",
  "abcd" ,"build","lol" ,"nike"];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: (){
      query ='';
    }, icon: Icon(Icons.clear))];
  }

  @override
  Widget buildLeading(BuildContext context){
    return IconButton(onPressed: (){
      close(context, null);
    }, icon: Icon(Icons.arrow_back));
  }


  @override
  Widget buildResults(BuildContext context) {
    List matchQuery = [];
    for(var fruit in names){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(itemBuilder: (context, index) {
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
    },itemCount: matchQuery.length,);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List matchQuery = [];
    for(var fruit in names){
      if(fruit.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(itemBuilder: (context, index) {
      var result = matchQuery[index];
      return ListTile(
        title: Text(result),
      );
    },itemCount: matchQuery.length,);
  }


}
