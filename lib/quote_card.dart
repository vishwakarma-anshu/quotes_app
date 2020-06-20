import 'package:flutter/material.dart';
import 'package:flutter_quotes/quote.dart';


class QuoteCard extends StatelessWidget {

  final Quote quote;
  final Function delete;

  QuoteCard({this.quote, this.delete});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 0.0),
      color: Colors.red[100],
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                quote.quote,
                style: TextStyle(
                  fontSize: 14.0,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            Divider(
              // height: 2.0,
              color: Colors.red,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton.icon(
                  onPressed: delete,
                  padding: EdgeInsets.all(0.0),
                  icon: Icon(Icons.delete),
                  label: Text('Delete'),
                ),
                Text(
                  '- ${quote.author}',
                  style: TextStyle(
                    fontSize: 12.0,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
