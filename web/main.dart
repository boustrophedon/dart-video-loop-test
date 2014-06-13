import 'dart:html';

CanvasElement canvas;
CanvasRenderingContext2D context;
VideoElement vid;

void main() {
  canvas = querySelector("#area");
  context = canvas.context2D;

  canvas.width = window.innerWidth;
  canvas.height = window.innerHeight;

  vid = new VideoElement();
  vid.width = canvas.width;
  vid.height = canvas.height;
  vid.loop = true;
  vid.src = "pika.webm";
  vid.autoplay = true;

  vid.onCanPlay.listen((e)=>(window.requestAnimationFrame(render)));
}

void render(num dt) {
  //context.clearRect(0, 0, canvas.width, canvas.height);
  context.drawImage(vid, 0, 0);
  window.requestAnimationFrame(render);
}
