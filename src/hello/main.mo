import HashMap "mo:base/HashMap";
import Nat "mo:base/Nat";
import Text "mo:base/Text";
import Option "mo:base/Option";
import Iter "mo:base/Iter";
import Hash "mo:base/Hash";

actor {
    private stable var associatedGameByTokenId : [(Nat, Text)] = [];
    private let associatedGameByTokenByIdMap : HashMap.HashMap<Nat, Text> = HashMap.fromIter<Nat, Text>(associatedGameByTokenId.vals(), 10, Nat.equal, Hash.hash);

    private stable var associatedGameByAssociation : [(Text, Nat)] = [];
    private let associatedGameByAssociationMap : HashMap.HashMap<Text, Nat> = HashMap.fromIter<Text, Nat>(associatedGameByAssociation.vals(), 10, Text.equal, Text.hash);

    public func associate(tokenId : Nat, associationId : Text) : async Nat {
        associatedGameByTokenByIdMap.put(tokenId, associationId);
        associatedGameByAssociationMap.put(associationId, tokenId);
        return tokenId;
    };

	public func nftAssociated(tokenId : Nat) : async Bool {
		return Option.isSome(associatedGameByTokenByIdMap.get(tokenId));
	};

    public func AssociationExists(associationId : Text) : async Bool {
        return Option.isSome(associatedGameByAssociationMap.get(associationId));
    };

    system func preupgrade() {
        associatedGameByTokenId := Iter.toArray(associatedGameByTokenByIdMap.entries());
        associatedGameByAssociation := Iter.toArray(associatedGameByAssociationMap.entries());

    };

    system func postupgrade() {
        associatedGameByTokenId := [];
        associatedGameByAssociation := [];
    };

};