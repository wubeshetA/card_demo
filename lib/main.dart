import 'package:card_demo/quote_card.dart';
import 'package:flutter/material.dart';
import 'package:card_demo/quote.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: "Les Brown",
        text: "Once you open your mouth, you tell the world who you are."),
    Quote(
        author: "Mahatma Gandhi",
        text: "Learn as if you will live forever, "
            "live like you will die tomorrow."),
    Quote(
        author: "Henry David Thoreau",
        text: "Success usually comes to "
            "those who are too busy looking for it.")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Awesome Quotes")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
