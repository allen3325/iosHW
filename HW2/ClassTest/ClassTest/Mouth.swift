//
//  Mouth.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/13.
//

import Foundation
import SwiftUI

struct Mouth:Shape{
    func path(in rect: CGRect) -> Path {
        Path { Mouth in
            Mouth.move(to: CGPoint(x: 125, y: 252))
            Mouth.addLine(to: CGPoint(x: 192, y: 274))
            Mouth.addLine(to: CGPoint(x: 260, y: 252))
            Mouth.addLine(to: CGPoint(x: 245, y: 300))
            Mouth.addQuadCurve(to: CGPoint(x: 135, y: 300), control: CGPoint(x: 190, y: 346))
            Mouth.addLine(to: CGPoint(x: 125, y: 252))
        }
    }
    
    
}

struct Mouth_Previews: PreviewProvider {
    static var previews: some View {
        Mouth()
            .fill()
    }
}
