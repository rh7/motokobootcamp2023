import Http "http";
import Text "mo:base/Text";
import Debug "mo:base/Debug";

// import Test "test";

actor {

    public type HttpRequest = Http.HttpRequest;
    public type HttpResponse = Http.HttpResponse;

    stable var website_text : Text = "Hello Rouven!!";

    public func receive_message(message : Text) : async Nat {
        Debug.print(debug_show(message));
        website_text := message;
        return website_text.size();
    };

    public query func http_request (req: HttpRequest) : async HttpResponse {
        return ({
            body = Text.encodeUtf8(website_text);
            headers = [];
            status_code = 200;
            streaming_strategy = null;
        })
        
    }
};
