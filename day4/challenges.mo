
import List "mo:base/List";
import Principal "mo:base/Principal";
import Debug "mo:base/Debug";
import Buffer "mo:base/Buffer";

actor {

  
//1) Write a function unique that takes a list l of type List and returns a new list with all duplicate elements removed.
//unique<T> : (l : List<T>, equal: (T,T) -> Bool) -> List<T> 

// 3) Write a function is_anonymous that takes no arguments but returns a Boolean indicating if the caller is anonymous or not.
// is_anynomous : () -> async Bool; 

    public shared ({caller}) func is_anonymous() : async Bool {
        Debug.print(debug_show(caller));
    
        if (Principal.isAnonymous(caller)) {
            Debug.print("call is anonymous");
            return true;    
        } else {
            Debug.print("call is " # debug_show(caller));
            return false;       
        
        };
        
    };

// 4) Write a function find_in_buffer that takes two arguments, buf of type Buffer and val of type T, 
// and returns the optional index of the first occurrence of "val" in "buf".
// find_in_buffer<T> :  (buf: Buffer.Buffer<T>, val: T, equal: (T,T) -> Bool) -> ?Nat

    public func find_in_buffer <T> (buf: Buffer.Buffer<T>, val: T, equal: (T,T)) : async ?Nat {
     
       return Buffer.indexOf<val>(val, buf, equal) : ?Nat;
      
    };



};
