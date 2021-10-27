import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate {
  final String content;
  late List<String> _words;
  CustomSearchDelegate(this.content) {
    _words = content.split(' ');
    print('words length');
    print(_words.length);
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //   return ListView.builder(
    //     itemCount: results.length,
    //     itemBuilder: (context, index) {
    //       var result = results[index];
    //       return ListTile(
    //         title: Text(result.title),
    //       );
    //     },
    //   );
    // }
    return const Center(
      child: Text(
        "Search term must be longer than two letters.",
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.length <= 2) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Center(
            child: Text(
              "Search term must be longer than two letters.",
            ),
          )
        ],
      );
    }
    List<String> _resultsList =
        _words.where((word) => word.startsWith(query)).toList();
    return ListView.builder(
      itemCount: _resultsList.length,
      itemBuilder: (context, index) => Text(_resultsList[index]),
    );
  }
}
