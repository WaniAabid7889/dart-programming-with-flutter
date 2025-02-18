import 'dart:async';

Future<String> fetchData() {
 List<String> ls =  ['abid','hussain','wani'];
  return Future.delayed(Duration(seconds: 2), () =>"list $ls");
}

void main() async {
  print("Fetching...");
  var data = await fetchData();
  print(data);

  print("Stream started...");
  numberStream().listen((number) {
    print("Received: $number");
  });
}

Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;  // Emits a new value every second
  }
}


/*
Feature	          Future          	            Stream
Number of values	One-time                      result	Multiple values over time
Use case	        API calls, file reading	      Real-time data, event listeners
Execution	        Completes once	              Keeps running until closed
Example         	Fetching user profile	        Listening for button clicks
 */
