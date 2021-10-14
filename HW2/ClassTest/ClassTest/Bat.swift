//
//  Bat.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/13.
//

import Foundation
import SwiftUI

struct Bat:Shape{
    func path(in rect: CGRect) -> Path {
        Path { Bat in
            Bat.move(to: CGPoint(x: 154, y: 354))
            Bat.addQuadCurve(to: CGPoint(x: 173, y: 328), control: CGPoint(x: 160, y: 334))
            Bat.addQuadCurve(to: CGPoint(x: 215, y: 328), control: CGPoint(x: 190, y: 340))
            Bat.addQuadCurve(to: CGPoint(x: 233, y: 354), control: CGPoint(x: 232, y: 340))
            Bat.addQuadCurve(to: CGPoint(x: 192, y: 360), control: CGPoint(x: 215, y: 340))
            Bat.addQuadCurve(to: CGPoint(x: 154, y: 354), control: CGPoint(x: 170, y: 340))
        }
    }
    
    
}
