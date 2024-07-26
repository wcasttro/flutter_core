import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CardCopyInfo extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function()? closed;
  final Function()? edit;
  final String text;

  const CardCopyInfo({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.edit,
    required this.text,
    this.closed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Card(
          color: Colors.transparent,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: edit,
                      child: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: closed,
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 8),
                        Text(
                          title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(subtitle,
                            style: const TextStyle(
                                color: Colors.grey, fontSize: 13))
                      ],
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () async {
                    try {
                      if (Platform.isAndroid || Platform.isIOS) {
                        await Clipboard.setData(ClipboardData(text: text))
                            .then((value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('senha copiada !')));
                        });

                        return;
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(e.toString())));
                    }
                  },
                  icon: const Icon(
                    Icons.content_copy,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
