
module {
    public type Name = Text; 

    public type Desc = Text;
    public type Balance = Nat32;
    public type UserRating = Nat32;
    public type ID = Text; // change this to principal later! 

public type  Entry = {
        userName : Name;
        descript : Desc;
        token  : Balance;
        userRating  : UserRating;
    };

/*public type User = {
  userId : Text;
  userName : Text;
};
public type Infos= {
 userName: Text;
 hasPic: Bool;
 rewards: Nat;
};*/

};

