//
//  Eyes.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/13.
//

import Foundation
import SwiftUI

struct Eyes: Shape{
    func path(in rect: CGRect) -> Path {
        Path{ Eyes in
            Eyes.move(to: CGPoint(x: 116, y: 212))
            Eyes.addLine(to: CGPoint(x: 172, y: 233))
            Eyes.addQuadCurve(to: CGPoint(x: 166, y: 241), control: CGPoint(x: 171, y: 238))
            Eyes.addLine(to: CGPoint(x: 133, y: 241))
            Eyes.addLine(to: CGPoint(x: 123, y: 233))
            Eyes.addLine(to: CGPoint(x: 117, y: 212))
        }
    }
    
    
}
