//
//  ContentView.swift
//  ClassTest
//
//  Created by 張哲瑋 on 2021/10/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Group {
                Cloak()
                    .fill()
                Eyes()
                    .fill(Color.white)
                Eyes()
                    .fill(Color.white)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                Hands()
                    .fill(Color(red: 80/255, green: 80/255, blue: 80/255))
                Hands()
                    .fill(Color(red: 80/255, green: 80/255, blue: 80/255))
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                BatmanBody()
                    .fill(Color(red: 80/255, green: 80/255, blue: 80/255))
                Shadow()
                    .fill(Color(red: 27/255, green: 27/255, blue: 27/255))
                Shadow()
                    .fill(Color(red: 27/255, green: 27/255, blue: 27/255))
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                Belt()
                    .fill(Color(red: 110/255, green: 90/255, blue: 89/255))
                Bat()
                .fill(Color.black)
            }
            Group{
                Mouth()
                    .fill(Color(red: 219/255, green: 187/255, blue: 170/255))
                Path { MouthLine in
                    MouthLine.move(to: CGPoint(x: 175, y: 293))
                    MouthLine.addQuadCurve(to: CGPoint(x: 211, y: 293), control: CGPoint(x: 192, y: 280))
                }
                .fill()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
