import 'dart:math';

void main() {
  //entry point of dart program.

  //types in dart

  int a = 10;
  double b = 22.2;
  num c = 33.3;

  String teste_string1 = "Com aspas duplas";
  String teste_string2 = 'Com aspas simples';

  bool isTrue = true;

  var teste_var = "Hello I'm a var";

  List<int> numbers = [1, 2, 3, 4]; //note that arrays in dart are called list.
  List<dynamic> manyThings = [
    a,
    b,
    c,
    teste_string1,
    teste_string2,
    teste_var,
    isTrue
  ]; //if you want a list that supports everythin make it a dynamic list???.

  manyThings.forEach((element) {
    print(element);
    print(element.runtimeType);
  });

  print("\n");

  Map<String, String> isLikeJson = {
    "Name": "Jhon",
    "Age": "19",
    "Works": "Yes"
  };

  print(isLikeJson.values);
  print(isLikeJson.entries);
  print(isLikeJson["Name"]);

  //string interpolation

  String name = "Marcelo";
  String sentece = "Hello $name"; // or "Hello" + name
  String complexSentence =
      "Hello ${isLikeJson["Name"]}"; //here we need to add {}

  print("\n" + sentece + "\n" + complexSentence);

//functions

  int sum(int a, int b) {
    return a + b;
  } //normal funtion with normal params

  print(sum(12, 12));
//if you add {params} in your params you can use name parameters;

  int sub({int a = 0, int b = 0}) {
    return a - b;
  }

  print(sub(a: 10, b: 5));

  void printPrice() => print("free");

  int? testeNUll;

  print(testeNUll ?? 0);
  //?? = if(variable == NULL){do this};

  Teste teste = Teste(1, 2, 3, 4); // nao precisa do New no dart;
}

class Teste {
  int a;
  int b;
  int c;
  int d;

  Teste(this.a, this.b, this.c,
      this.d); // you can create your constructor like this instead of this;
  /*
      Teste(int a, int b, int c, int d)
      {
      this.a = a;
      this.b = b;
      this.c = c;
      this.d = d;
      }
      */
}
