//
//  path.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/13.
//

import Foundation
import SwiftUI

struct Cloak: Shape{
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: 111, y: 52))
            path.addLine(to: CGPoint(x: 128, y: 76))
            path.addQuadCurve(to: CGPoint(x: 148, y: 77), control: CGPoint(x: 134, y: 83))
            path.addQuadCurve(to: CGPoint(x: 262, y: 83), control: CGPoint(x: 199, y: 60))
            path.addLine(to: CGPoint(x: 262, y: 83))
            path.addQuadCurve(to: CGPoint(x: 269, y: 75), control: CGPoint(x: 265, y: 83))
            path.addLine(to: CGPoint(x: 286, y: 52))
            path.addLine(to: CGPoint(x: 307, y: 238))
            path.addQuadCurve(to: CGPoint(x: 278, y: 287), control: CGPoint(x: 300, y: 265))
            path.addLine(to: CGPoint(x: 309, y: 295))
            path.addQuadCurve(to: CGPoint(x: 335, y: 312), control: CGPoint(x: 323, y: 298))
            path.addLine(to: CGPoint(x: 362, y: 354))
            path.addLine(to: CGPoint(x: 382, y: 431))
            path.addLine(to: CGPoint(x: 269, y: 408))
            path.addLine(to: CGPoint(x: 125, y: 414))
            path.addLine(to: CGPoint(x: 22, y: 427))
            path.addLine(to: CGPoint(x: 54, y: 321))
            path.addQuadCurve(to: CGPoint(x: 86, y: 297), control: CGPoint(x: 69, y: 299))
            path.addLine(to: CGPoint(x: 122, y: 295))
            path.addLine(to: CGPoint(x: 92, y: 259))
            path.addQuadCurve(to: CGPoint(x: 86, y: 215), control: CGPoint(x: 88, y: 254))
            path.addLine(to: CGPoint(x: 111, y: 52))
        }
    }
}
