//
//  Triangle.swift
//  homework-3
//
//  Created by QA on 11/2/16.
//  Copyright © 2016 geek. All rights reserved.
//

import Foundation

class Triancle: Figure {
    override func square () -> Int {
        let a = 5
        let h = 7
        let sq = (a*h)/2
        return sq
    }
}