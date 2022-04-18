void main(List<String> args) {
  Counter counter1 = Counter(1);
  Counter counter2 = Counter(4);
  Counter counter3 = counter1 + counter2;
  print(counter3.value);

  bool isFirstGreater = counter1 > counter2;
  print(isFirstGreater);  // false
    
  bool isFirstLess = counter1 < counter2;
  print(isFirstLess); // true
}

class Counter{   
  int value;
  Counter(this.value);
    
  Counter operator +(Counter otherCounter){ 
    return Counter(this.value + otherCounter.value);
  }

  bool operator >(Counter otherCounter) => this.value > otherCounter.value;

  bool operator <(Counter otherCounter) => this.value < otherCounter.value;
}