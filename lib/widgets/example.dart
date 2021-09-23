import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,

      /*
      child: ListView.builder(
          //itemCount: 999,
          // shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
        return Container(
          color: index % 2 == 0 ? Colors.red : Colors.blue,
          padding: const EdgeInsets.all(200.0),
          child: Text('$index'),
        );
      }),
      */
      child: ListView.separated(
        itemCount: 999,
        addAutomaticKeepAlives: true,
        //itemCount: 999,
        // shrinkWrap: true,
        itemBuilder: (BuildContext context, int index) {
          return Ex(text: '$index');
          /*
          Container(
            color: index % 2 == 0 ? Colors.red : Colors.blue,
            padding: const EdgeInsets.all(20.0),
            child: Text('$index'),
          );
        */
        },
        separatorBuilder: (BuildContext context, int index) {
          return Container(height: 3, color: Colors.black);
        },
      ),
    );

    /*ListView(
      children: [
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Text('1'),
        Container(
          height: 500,
          color: Colors.black,
        ),
        Container(
          height: 500,
          color: Colors.red,
        ),
        Container(
          height: 500,
          color: Colors.pink,
        ),
        Container(
          height: 500,
          color: Colors.amber,
        ),
        Container(
          height: 500,
          color: Colors.green,
        ),
      ],
    );
    */
  }
}

class Ex extends StatefulWidget {
  final String text;
  const Ex({Key? key, required this.text}) : super(key: key);

  @override
  _ExState createState() => _ExState();
}

class _ExState extends State<Ex> with AutomaticKeepAliveClientMixin {
  late final TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController(text: widget.text);
  }

  @override
  Widget build(BuildContext context) {
    return TextField(controller: controller);
  }

  @override
  bool get wantKeepAlive => true;
}
