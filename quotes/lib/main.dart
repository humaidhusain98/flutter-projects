import 'package:flutter/material.dart';
import 'quote.dart';
void main() {
  runApp(MaterialApp(
    home:QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes=[
    Quote('A room without books is like a body without a soul.','Oscar Wilde',),
    Quote('So many books, so little time.','Frank Zappa'),
    Quote('A room without books is like a body without a soul.','Marcus Tullius Cicero')

  ];

  Widget quoteTemplate(Quote quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
            style: TextStyle(fontSize: 18.0,color: Colors.grey[800]),),
            SizedBox(height: 6.0,),
            Text("-"+quote.author
            ,style: TextStyle(fontSize: 14.0,color:Colors.black87),
            ),
            SizedBox(height: 8.0,),
            FlatButton.icon(
                onPressed: (){
              setState(() {
                quotes.remove(quote);

              });
            },
              label: Text('Delete quote'),
             icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Column(
        children: quotes.map((quote){
          return quoteTemplate(quote);
        }).toList(),
      ),

    );
  }
}


