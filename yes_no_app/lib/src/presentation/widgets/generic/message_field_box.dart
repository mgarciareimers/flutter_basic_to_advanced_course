import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController textController = TextEditingController();
    final FocusNode focusNode = FocusNode();

    final underlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent,),
      borderRadius: BorderRadius.circular(20)
    );

    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        enabledBorder: underlineInputBorder,
        focusedBorder: underlineInputBorder,
        suffixIcon: IconButton(
          onPressed: () => _onSendButtonClicked(textController),
          icon: const Icon(
            Icons.send_outlined
          ),
        ),
        hintText: 'Termina tu mensaje con un "?"'
      ),
      controller: textController,
      focusNode: focusNode,
      onTapOutside: (PointerDownEvent? event) => focusNode.unfocus(),
      onFieldSubmitted: (String value) => _onSubmitButtonClicked(textController, focusNode),
    );
  }

  // Method that is called when the user clicks the submit button.
  void _onSubmitButtonClicked(TextEditingController textController, FocusNode focusNode) {
    focusNode.requestFocus();
    _onSendButtonClicked(textController);
  }

  // Method that is called when the user clicks the send button.
  void _onSendButtonClicked(TextEditingController textController) {
    // TODO.

    textController.clear();
  }
}
