import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RenderElements extends StatefulWidget {
  const RenderElements({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<RenderElements> createState() => _RenderElementsState();
}

class _RenderElementsState extends State<RenderElements> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...List.generate(
                100,
                (index) => GestureDetector(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 80,
                          height: 40,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.lightGreen,
                          ),
                          child: Text(
                            "$index",
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Text(
                          "element - $index",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
