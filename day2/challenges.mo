
import Array "mo:base/Array";
import Int "mo:base/Int";
import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Iter "mo:base/Iter";


actor {

// 1) Write a function average_array that takes an array of integers and returns the average value of the elements in the array.
// average_array(array : [Int]) -> async Int.

  let array : [Int] = [10,20,30,100];
  var sum : Int = 0;
  var counter : Int = 0;

  public func average_array() : async Int {
  
    for (value in array.vals()) {
      sum += value;
      counter += 1;
    };

    return (sum / counter);
  };


// 2) Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.
// count_character(t : Text, c : Char) -> async Nat

  
  public func count_character(t : Text, c : Char) : async Nat {

    var c_counter : Nat = 0;
    // Debug.print(debug_show(Char.toNat32(c)));
    
    for (x in t.chars()){
      Debug.print(debug_show(Char.toNat32(x)));
    
      if (x == c) {
        Debug.print(debug_show("match"));
       // Debug.print(debug_show(Char.toNat32(x)));
        c_counter := c_counter + 1;
       // Debug.print(debug_show(c_counter));
      } else {
        Debug.print(debug_show("nope"));
      }
      
    };

    return (c_counter);
  };

// 3) Write a function factorial that takes a natural number n and returns the factorial of n.
// factorial(n : Nat) ->  async Nat

  public func factorial(n : Nat) : async Nat {
    
    let i = Iter.range (1, n);
    var x : Nat = 1;

    for (number in i)
    {
      x := x * number;
      //Debug.print(debug_show(number));
      //Debug.print(debug_show(x));
    };
    
    return (x);
  };

// 4) Write a function number_of_words that takes a sentence and returns the number of words in the sentence.
// number_of_words(t : Text) -> async Nat

  public func number_of_word (t : Text) : async Nat {

    for (x in t.chars()){
    
  };

// 5) Write a function find_duplicates that takes an array of natural numbers and returns a new array containing 
// all duplicate numbers. The order of the elements in the returned array should be the same as the order of the 
// first occurrence in the input array.

  let array : [Nat] = [2,4,5,6,7,4,6,7,3,4,6,0];

  // public func find_duplicates (array : [Nat]) : async [Nat] {

    //return (array);

  //};

// 6) Write a function convert_to_binary that takes a natural number n and returns a string representing the 
// binary representation of n. convert_to_binary(n : Nat) -> async Text

  public func (n : Nat) : async Text {

  };


};





