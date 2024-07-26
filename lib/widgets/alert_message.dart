import 'package:core/style/extensions.dart';
import 'package:core/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AlertMessage {
  static showAlertMessage(
      BuildContext context, Function() actionOk, String title) {
    return showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: context.typography.smallTitle
                      .copyWith(color: context.colors.primaryColors.main),
                ),
              ),
              actions: <Widget>[
                Row(
                  children: [
                    context.padding.stackHorizontalSmall,
                    Expanded(
                        child: PrimaryButton(
                      onPressed: () {},
                      text: 'Sim',
                    )),
                    context.padding.stackHorizontalSmall,
                    Expanded(
                      child: PrimaryButton(
                        onPressed: () => Navigator.pop(context),
                        text: 'Não',
                      ),
                    ),
                    context.padding.stackHorizontalSmall
                  ],
                ),
              ],
            ));
  }
}
