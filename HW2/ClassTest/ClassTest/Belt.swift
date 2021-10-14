//
//  Belt.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/13.
//

import Foundation
import SwiftUI

struct Belt: Shape{
    func path(in rect: CGRect) -> Path {
        Path { Belt in
            Belt.move(to: CGPoint(x: 132, y: 362))
            Belt.addLine(to: CGPoint(x: 171, y: 362))
            Belt.addLine(to: CGPoint(x: 171, y: 366))
            Belt.addLine(to: CGPoint(x: 211, y: 366))
            Belt.addLine(to: CGPoint(x: 211, y: 362))
            Belt.addLine(to: CGPoint(x: 260, y: 362))
            Belt.addLine(to: CGPoint(x: 260, y: 387))
            Belt.addLine(to: CGPoint(x: 211, y: 387))
            Belt.addLine(to: CGPoint(x: 211, y: 379))
            Belt.addLine(to: CGPoint(x: 170, y: 379))
            Belt.addLine(to: CGPoint(x: 170, y: 387))
            Belt.addLine(to: CGPoint(x: 132, y: 387))
        }
    }
    
    
}
