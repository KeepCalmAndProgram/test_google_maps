import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class IncrementProvider extends StatefulWidget {
  const IncrementProvider({required Key key, required this.child}) : super(key: key);

  final Widget child;

  @override
  IncrementProviderState createState() => IncrementProviderState();

}

class IncrementProviderState extends State<IncrementProvider> {
  late int _counter;

  void incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: _counter,
      child: Provider.value(
        value: this,
        child: widget.child,
      ),
    );
  }
}
