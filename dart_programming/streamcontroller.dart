import 'dart:async';

void main() {
  // Create a StreamController
  StreamController<String> controller = StreamController<String>();

  // Listen to the stream
  controller.stream.listen((data) {
    print("Received: $data");
  });

  // Add data to the stream
  controller.add("Hello");
  controller.add("World");
  controller.add("Dart Streams!");

  // Close the stream when done
  controller.close();
}
