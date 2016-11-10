//
//  Figure.swift
//  homework-3
//
//  Created by QA on 11/2/16.
//  Copyright © 2016 geek. All rights reserved.
//

import Foundation

class Figure {
    var defaultSquare = 0
    
    func square() -> Int { return defaultSquare }
    
    func result() -> String {
        return " \(square())"
    }
}

