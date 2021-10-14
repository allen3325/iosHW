//
//  BeltLine.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/13.
//

import Foundation
import SwiftUI

struct BeltLine: Shape
{
    func path(in rect: CGRect) -> Path {
        Path { BeltLine in
            BeltLine.move(to: CGPoint(x: 132, y: 366))
            BeltLine.addLine(to: CGPoint(x: 171, y: 366))
            BeltLine.addLine(to: CGPoint(x: 171, y: 379))
            BeltLine.addLine(to: CGPoint(x: 132, y: 379))
            BeltLine.addLine(to: CGPoint(x: 132, y: 366))
            BeltLine.addLine(to: CGPoint(x: 132, y: 370))
            BeltLine.addLine(to: CGPoint(x: 171, y: 370))
            BeltLine.addLine(to: CGPoint(x: 171, y: 366))
            BeltLine.addLine(to: CGPoint(x: 161, y: 366))
            BeltLine.addLine(to: CGPoint(x: 161, y: 379))
            BeltLine.addLine(to: CGPoint(x: 141, y: 379))
            BeltLine.addLine(to: CGPoint(x: 141, y: 366))
        }
    }
    
}

