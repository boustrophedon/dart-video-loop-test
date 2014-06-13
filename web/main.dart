import 'dart:html';

void main() {
  var vid = new VideoElement();
  vid.loop = true;
  vid.autoplay = true;

  SourceElement source = new SourceElement();
  source.src = "pika.webm";
  source.type = "video/webm";

  vid.nodes.add(source);

  document.body.nodes.add(vid);
}

