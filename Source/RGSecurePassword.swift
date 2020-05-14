//
//  RGSecurePassword.swift
//  RGSecurePassword
//
//  Created by Rohit Gaur on 5/14/20.
//

import Foundation

public class RGSecurePassword {
    
    public enum RGSPool: String {
        case `default`
        case RGA
        case RGAN
        case RGAS
        
        func get() -> String {
            switch self {
            case .RGA:
                // Alphabets
                return "abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ"
            case .RGAN:
                // Alphabets and Numbers
                return "abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789"
            case .RGAS:
                // Alphabets and Symbols
                return "abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ_!@#$%^&*{}+-"
            default:
                // Alphabets, Symbols and Numbers
                return "abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ_!@#$%^&*{}+-23456789"
            }
        }
    }
    
    public class func get(pool:RGSPool, length:Int) -> String {
        // Get String Pool in an array
        var arrPool = Array(pool.get())
        
        // Shuffle the array
        arrPool.shuffle()
        
        // Get the shuffled String Pool
        let strPool = String(arrPool)
        
        // Return the random String of defined length
        return String((0..<length).map{ _ in strPool.randomElement()! })
    }
}

extension Array {
    mutating func shuffle() {
        for i in 0..<(count - 1) {
            let j = Int(arc4random_uniform(UInt32(count - i))) + i
            guard i != j else { continue}
            self.swapAt(i, j)
        }
    }
}
