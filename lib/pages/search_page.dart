import 'package:flutter/material.dart';
import 'package:meilisearch/meilisearch.dart';
import 'package:meilisearchpanel/pages/login_page.dart';

import '../utils/utils.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.url, required this.password});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String url;

  final String password;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _formKey = GlobalKey<FormState>();
  late SearchResult _dataFrom = SearchResult();
  late MeiliSearchClient _client;
  List<String> _indexList = [];
  String _dropdownIndexValue = "";
  bool _hasSearched = false;

  @override
  void initState() {
    super.initState();
    try {
      _client = MeiliSearchClient(widget.url, widget.password);
      _findAllIndexes();
    } on Exception catch (exception) {
      Utils.showAlertDialog(context, () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
      });
    } catch (error) {
      Utils.showAlertDialog(context, () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return LoginPage();
        }));
      });
    }
  }

  void _findAllIndexes() async {
    var indexes = await _client.getIndexes();
    setState(() {
      for (var element in indexes.results) {
        _indexList.add(element.uid);
      }
    });
  }

  void _searchIndexes(String? query) async {
    if (_dropdownIndexValue.isNotEmpty) {
      var index = _client.index(_dropdownIndexValue);
      var result = await index.search(query);
      setState(() {
        _dataFrom = result;
        _hasSearched = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: SizedBox(
                  height: 200,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Query",
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 400,
                          child: TextFormField(
                            decoration: const InputDecoration(hintText: ""),
                            // The validator receives the text that the user has entered.
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter some text';
                              }
                              return null;
                            },
                            onChanged: (text) {
                              _searchIndexes(text);
                            },
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.all(18.0),
                          child: Text(
                            "Indexes",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        DropdownButton<String>(
                          value: _indexList.isNotEmpty
                              ? _dropdownIndexValue
                              : "None Found",
                          onChanged: (String? value) {
                            // This is called when the user selects an item.
                            setState(() {
                              _dropdownIndexValue = value!;
                            });
                          },
                          items: _indexList
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(
                columnSpacing: 10,
                headingRowColor: MaterialStateProperty.all(Colors.blue),
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                  ),
                ),
                columns: _hasSearched && _dataFrom.hits != null
                    ? _dataFrom.hits!
                    .map((element) {
                  List<DataColumn> sss = [];
                  element.forEach((key, value) {
                    sss.add(DataColumn(
                      label: Expanded(
                        child: Text(
                          key.toString().toUpperCase(),
                          style: TextStyle(fontStyle: FontStyle.normal),
                        ),
                      ),
                    ));
                  });
                  return sss;
                })
                    .toList()
                    .first
                    : [
                  const DataColumn(
                    label: Expanded(
                      child: Text(
                        'Index Id',
                        style: TextStyle(fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  const DataColumn(
                    label: Expanded(
                      child: Text(
                        'Age',
                        style: TextStyle(fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                  const DataColumn(
                    label: Expanded(
                      child: Text(
                        'Role',
                        style: TextStyle(fontStyle: FontStyle.normal),
                      ),
                    ),
                  ),
                ],
                rows: _hasSearched && _dataFrom.hits != null
                    ? _dataFrom.hits!.map((element) {
                  List<DataCell> dataCell = [];
                  element.forEach((key, value) {
                    dataCell.add(DataCell(SizedBox(
                      width: 200,
                      child: Text(
                        value.toString(),
                        overflow: TextOverflow.clip,
                        maxLines: 1,
                      ),
                    )));
                  });
                  return DataRow(
                    cells: dataCell,
                  );
                }).toList()
                    : [],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // If the form is valid, display a snackbar. In the real world,
            // you'd often call a server or save the information in a database.
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Processing Data')),
            );
          }
        },
        tooltip: 'Search',
        child: const Icon(Icons.search),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
