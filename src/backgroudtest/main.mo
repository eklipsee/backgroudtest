import Map "mo:base/HashMap";
import Text "mo:base/Text";
import Types "types";

actor main {
    

    // used for profile creation when profile gets entry
    public type Entry = Types.Entry;
    public type ID = Types.ID;
    public type Name = Types.Name;
    


    // essay info when submit button gets hit, for calcutale and work with later in profiles and balances etc
    type essaySubmitInfo = {
        userName : Text;
        userId : Text;
        essayTitle : Text;
        wordCount : Text;
        essayTopic : Text;
        userEdu : Text;
        payTokens : Nat;
        reviewTimes : Nat;
        essayID : Nat32; // is0 everytime an essay gets created +1, call this in other function
    };


   // public type User = Types.User;
    //public type UserName = Types.username;
    //types mo test
    


    // databases
    let dbase_profiles = Map.HashMap<ID,Entry>(0,Text.equal,Text.hash);
    let dbase_essays = Map.HashMap<ID,essaySubmitInfo>(0,Text.equal,Text.hash);

    
    ///// functions/

    // create profile
    public func createProfile(name: Name, profiledata:Entry) : async () {
        dbase_profiles.put(name,profiledata);
    };
    // get profile by UserName
    public query func getProfile(name : Name) : async ?Entry {
        dbase_profiles.get(name)

    };
    

    // create essay
    public func createEssayInfo(id : ID, essayData:essaySubmitInfo) : async () {
        dbase_essays.put(id,essayData);
    };
    // get essay info, for preview, in profile, to skyboard, get on essayID
    // type in essay ID
    public func getEssayInfo(id:ID) : async ?essaySubmitInfo {
        dbase_essays.get(id)
    };


};