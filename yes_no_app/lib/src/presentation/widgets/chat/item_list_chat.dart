import 'package:flutter/material.dart';

class ItemListChat extends StatelessWidget {
  final int index;
  final bool isMyMessage;

  const ItemListChat({
    required this.index,
    required this.isMyMessage,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: isMyMessage ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: isMyMessage ? colors.primary : colors.secondary,
            borderRadius: BorderRadius.circular(20)
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              index.toString(),
              style: const TextStyle(
                color: Colors.white
              ),
            ),
          ),
        ),
        SizedBox(height: isMyMessage ? 0 : 5),

        isMyMessage ?
          Container()
            :
          const _ImageBubble(),

        const SizedBox(height: 10),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  const _ImageBubble({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://yesno.wtf/assets/yes/3-422e51268d64d78241720a7de52fe121.gif',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) => loadingProgress == null ?
          child
            :
          Container(
            width: size.width * 0.7,
            height: 150,
            alignment: Alignment.center,
            child: Text('Cargando ${ (loadingProgress.cumulativeBytesLoaded * 100 / loadingProgress.expectedTotalBytes!).toStringAsFixed(2) }%')
          ),
      )
    );
  }
}
