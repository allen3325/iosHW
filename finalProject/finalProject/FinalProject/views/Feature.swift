//
//  SwiftUIView.swift
//  FinalProject
//
//  Created by 張哲瑋 on 2022/1/5.
//

import SwiftUI

struct Feature: View {
    @State private var downloadAmount = 0.0
    @EnvironmentObject var settings: UserSettings

    let timer = Timer.publish(every: 0.05, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack{
            if downloadAmount < 100{
                ProgressView("Loading…", value: downloadAmount, total:100)
                    .onReceive(timer) { _ in
                        if downloadAmount < 100 {
                            downloadAmount += 2
                        }
                    }
            } else {
                VStack{
                    OwnedGames()
                }
            }
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(settings.bgcolor)

    }
    
    func test(){
        
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Feature()
    }
}
