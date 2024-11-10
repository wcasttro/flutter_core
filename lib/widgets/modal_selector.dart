import 'package:flutter/material.dart';

class ModalSelector extends StatefulWidget {
  final String title;
  final double sizeWidth;
  final List<String> options;
  final double? maxHeight;
  final double? minHeight;
  final Function(String)? onChanged;

  const ModalSelector({
    required this.title,
    required this.options,
    super.key,
    this.sizeWidth = 200,
    this.maxHeight,
    this.minHeight,
    this.onChanged,
  });

  @override
  State<ModalSelector> createState() => _ModalSelectorState();
}

class _ModalSelectorState extends State<ModalSelector> {
  List<Widget> itens = [];
  String? _selectedValue;

  List<Widget> _generateItens(List<String> titles) {
    return titles
        .map(
          (title) => GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: Container(
                width: double.infinity,
                height: 25,
                color: Colors.grey,
                child: Center(child: Text(title)),
              ),
            ),
            onTap: () {
              setState(() {
                _selectedValue = title;
              });
              Navigator.pop(context);
            },
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await _configurandoModalBottomSheet(context);
      },
      child: Container(
        height: 40,
        width: widget.sizeWidth,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(child: Text(_selectedValue ?? widget.title)),
              SizedBox(width: 8),
              Icon(Icons.arrow_drop_down),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _configurandoModalBottomSheet(context) async {
    await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext bc) {
        return ConstrainedBox(
          constraints: BoxConstraints(
            minHeight:
                widget.minHeight ?? MediaQuery.of(context).size.height * 0.3,
            maxHeight:
                widget.maxHeight ?? MediaQuery.of(context).size.height * 0.65,
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 8, top: 4),
            child: Scrollbar(
              thumbVisibility: true,
              thickness: 10,
              child: SingleChildScrollView(
                child: Column(
                  children: _generateItens(widget.options),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
