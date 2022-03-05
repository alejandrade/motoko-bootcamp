import Array "mo:base/Array";
import Nat "mo:base/Nat";

actor {
    stable var counter = 0; 

    public func add(number1 : Nat, number2 : Nat) : async Nat {
        return number1 + number2;
    };

    public func square(number : Nat): async Nat {
        return number * number
    };

    public func days_to_second(days : Nat): async Nat {
        return days * 86400
    };

    public func increment_counter(day : Nat): async Nat {
        counter := day + counter;
        return counter;
    };

    public func clear_counter(): async () {
        counter := 0;
    };
    
    public func divide(n : Nat, m : Nat): async Bool {
        if (m == 0) {
            return false;
        } else if (m > n) {
            return false;
        };

        return true;
    };

    public func is_even(n : Nat): async Bool {
        return ((n % 2) == 0);
    };

    public func sum_of_array(numbers: [Nat]): async Nat {
        var result = 0;
        for (x in numbers.vals()){
            result += x;
        };
        return result;
    };

    public func maximum(numbers: [Nat]): async Nat {
        if (numbers.size() == 0 ) {
            return 0;
        };
        var result = Array.sort(numbers, Nat.compare);
        return result[numbers.size() - 1];
    };

    public func remove_from_array(numbers: [Nat], removed: Nat): async [Nat] {
        return Array.filter(numbers, func(val: Nat) : Bool { removed != val });
    };

    public func selection_sort(numbers: [Nat]): async [Nat] {
        var result = Array.sort(numbers, Nat.compare);
        return result;
    };
};
