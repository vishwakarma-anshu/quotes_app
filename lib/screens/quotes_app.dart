import 'package:flutter/material.dart';
import 'package:flutter_quotes/quote.dart';
import 'package:flutter_quotes/quote_card.dart';

import 'add_quote.dart';

class QuotesApp extends StatefulWidget {
  @override
  _QuotesAppState createState() => _QuotesAppState();
}


class _QuotesAppState extends State<QuotesApp> {

  List<Quote> quotes = [
    Quote(author: 'Linus Torvalds', quote: 'Talk is cheap, Show me the code.'),
    Quote(author: 'Harold Abelson', quote: 'Programs must be written for people to read, and only incidentally for machines to execute.'),
    Quote(author: 'John Woods', quote: 'Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live.'),
    Quote(author: 'Rick Cook', quote: 'Programming today is a race between software engineers striving to build bigger and better idiot-proof programs, and the Universe trying to produce bigger and better idiots. So far, the Universe is winning.'),
    Quote(author: 'Steve Jobs', quote: "You've baked a really lovely cake, but then you've used dog shit for frosting."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quotes App'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.only(bottom: 70.0),
        child: ListView(
          children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            } 
          )).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Quote quote = await Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddQuote()),
          );

          print(quote);
          setState(() {
            if(quote != null) quotes.add(quote);
          });
        },
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(Icons.add),
      ),
    );
  }
}
