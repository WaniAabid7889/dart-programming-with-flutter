void main(){
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg',
  };

  print("Name : $name");
  print("Year : $year");
  print("antennaDiameter : $antennaDiameter");
  print('flybyObjects $flybyObjects');
  print('image $image');

  for(final object in flybyObjects){
    print(object);
  }

  flybyObjects.where((name) => name.contains('Jupiter')).forEach(print);

}