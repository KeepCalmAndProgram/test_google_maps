import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class IncrementProvider extends StatefulWidget {
  const IncrementProvider({required Key key, required this.child}) : super(key: key);

  final Widget child;

  @override
  IncrementProviderState createState() => IncrementProviderState();

}

class IncrementProviderState extends State<IncrementProvider> {

  bool isDark = false;

  late StreamController<bool> controller;

  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<int>(context);

    return Provider.value(
      value: isDark,
      child: Provider.value(
        value: this,
        child: widget.child,
      ),
    );
  }
}


final xyz = EventProvider();

// EventProvider (Stream)
class EventProvider {
  StreamController<bool> sc = StreamController();
  bool isDart = false;

  Stream<bool> intStream() {
    return sc.stream;
  }
}