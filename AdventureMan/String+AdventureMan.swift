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
