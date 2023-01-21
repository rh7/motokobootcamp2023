actor {
    // send to receiver.mo
    //let receiver : actor { receive_message : (Text) -> async Nat } = actor ("rkp4c-7iaaa-aaaaa-aaaca-cai"); 

    // send to webpage.mo
    let receiver : actor { receive_message : (Text) -> async Nat } = actor ("qjdve-lqaaa-aaaaa-aaaeq-cai"); 

        public func send_message(message : Text) : async Nat {
            let size = await receiver.receive_message(message);
            return size
        };
}