import 'package:flutter/material.dart';
import 'package:senior_project_2/colors.dart';
import 'package:senior_project_2/common/enums/message_enum.dart';
import 'package:senior_project_2/features/chat/widgets/display_text_image_gif.dart';

class SenderMessageCard extends StatelessWidget {
  const SenderMessageCard(
      {Key? key, required this.message, required this.date, required this.type})
      : super(key: key);
  final String message;
  final String date;
  final MessageEnum type;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
          minWidth: 100,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: senderMessageColor,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [
              Padding(
                padding: type == MessageEnum.text
                    ? const EdgeInsets.only(
                        left: 10,
                        right: 30,
                        top: 5,
                        bottom: 25,
                      )
                    : const EdgeInsets.only(
                        left: 5,
                        top: 5,
                        right: 5,
                        bottom: 25,
                      ),
                child: DisplayTextImageGIF(
                  message: message,
                  type: type,
                ),
              ),
              Positioned(
                bottom: 2,
                right: 10,
                child: Text(
                  date,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[600],
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
