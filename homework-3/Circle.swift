//
//  Circle.swift
//  homework-3
//
//  Created by QA on 11/2/16.
//  Copyright © 2016 geek. All rights reserved.
//

import Foundation

class Circle: Figure {
    override func square () -> Int {
        let pi = 3
        let r = 10
        let sq = pi*r*r
        return sq
    }
}