import 'package:flutter/material.dart';

import '../quote.dart';


class AddQuote extends StatefulWidget {
  @override
  _AddQuoteState createState() => _AddQuoteState();
}

class _AddQuoteState extends State<AddQuote> {

  String author;
  String quote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Quote Screen'),
        centerTitle: true,
      ),
      body: Builder(
        builder: (context) {
          return Center(
            child: Card(
              margin: EdgeInsets.all(20.0),
              color: Colors.red[200],
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Center(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.red[600],
                          borderRadius: BorderRadius.circular(20.0),

                        ),
                        child: Text(
                          "Quote's Info",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.6,
                          ),
                        ),
                      )
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Author',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                      onChanged: (String value){
                        author = value;
                      },
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Quote',
                        labelStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          letterSpacing: 0.5,
                        ),
                      ),
                      onChanged: (String value){
                        quote = value;
                      },
                    ),
                    SizedBox(height: 15.0),
                    RaisedButton(
                      onPressed: (){
                        if(quote == null || quote == '')
                        {
                          Scaffold.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Please provide the quote')
                            ),
                          );
                        }
                        else {
                          author ??= '';
                          Navigator.pop(context, Quote(author: author, quote: quote));
                        }
                      },
                      color: Colors.red[400],
                      textColor: Colors.white,
                      child: Text('Add Quote'),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}