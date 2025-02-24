enum FromWho { me, hers }

class Message {
  final String text;
  final String? imageUrl;
  FromWho fromWho;

  Message({
    required this.text, 
    this.imageUrl, 
    required this.fromWho
  });

}
