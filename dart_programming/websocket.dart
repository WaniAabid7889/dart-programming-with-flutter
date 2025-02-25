import 'dart:io';

void main() async {
  // Connect to a WebSocket server
  WebSocket socket = await WebSocket.connect("wss://echo.websocket.org");

  // Listen for messages from the server
  socket.listen((message) {
    print("Received from server: $message");
  });

  // Send a message to the server
  socket.add("Hello, WebSocket!");

  // Close the connection after 3 seconds
  await Future.delayed(Duration(seconds: 3));
  socket.close();
}
/*
✨ When to Use What?
✔ Use Stream when working with async generators (async*).
✔ Use StreamController when you need manual control over adding/removing data.
✔ Use WebSocket when working with real-time applications like chat, notifications, and live updates.

 */