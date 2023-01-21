import Array "mo:base/Array";
import Debug "mo:base/Debug";

actor {
    stable var messages : [Text] = [];

    public func receive_message(message : Text) : async Nat {
        Debug.print(debug_show(message));
        messages:= Array.append<Text>(messages, [message]);
        return messages.size();
    };

    
};