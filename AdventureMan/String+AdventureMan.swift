//
//  String+AdventureMan.swift
//  AdventureMan
//
//  Created by Nikolai Vazquez on 9/22/15.
//  Copyright © 2015 CCHS Coding Club. All rights reserved.
//

import Foundation

infix operator =~ {}

func =~ (lhs: String, rhs: String) -> Bool {
    return lhs.rangeOfString(rhs, options: .RegularExpressionSearch) != nil
}

infix operator | { associativity left }

/// Concatenates two strings with a newline between them.
func | (lhs: String, rhs: String) -> String {
    return lhs + "\n" + rhs
}

extension String {

    /// Strips all extra whitespace from `self` and returns the result.
    func strippedOfExtraWhitespace() -> String {
        let words = self.componentsSeparatedByCharactersInSet(.whitespaceCharacterSet())
            .filter { $0.isEmpty == false }
        return words.joinWithSeparator(" ")
    }

}
