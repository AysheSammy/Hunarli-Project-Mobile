import 'package:flutter/material.dart';

class Expansion extends StatefulWidget {
  bool a;
  List b;
  int index;
  Expansion({
    required this.a,
    required this.b,
    required this.index,
    required PageStorageKey key,
  });

  @override
  State<Expansion> createState() => _ExpansionState();
}

class _ExpansionState extends State<Expansion> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      initiallyExpanded: widget.a,
      onExpansionChanged: (value) {
        setState(() {
          widget.a = value;
        });
      },
      key: PageStorageKey(widget.key),
      title: Text(widget.b[widget.index]['main']),
      leading: widget.b[widget.index]['icon'],
      textColor: const Color.fromRGBO(16, 24, 40, 1),
      collapsedTextColor: const Color.fromRGBO(132, 132, 132, 1),
      iconColor: const Color.fromRGBO(16, 24, 40, 1),
      collapsedIconColor: const Color.fromRGBO(132, 132, 132, 1),
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height:
              (40 * widget.b[widget.index]['sub_categories'].length).toDouble(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
              widget.b[widget.index]['sub_categories'].length,
              (index) => GestureDetector(
                child: SizedBox(
                  height: 40,
                  child: Text(widget.b[widget.index]['sub_categories'][index]),
                ),
              ),
            ),
          ),
        ),
      ],
      trailing: widget.a ? const Icon(Icons.remove) : const Icon(Icons.add),
    );
  }
}
