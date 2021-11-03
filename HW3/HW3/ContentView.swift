//
//  ContentView.swift
//  HW3
//
//  Created by 張哲瑋 on 2021/11/3.
//

import Foundation
import SwiftUI
import AVFoundation

struct ContentView: View{
    let player = AVPlayer()
    var body: some View {
        TabView{
            movieList()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("諾蘭電影介紹")
                        .foregroundColor(Color.primary)
                }
            nolanIntro()
                .tabItem {
                    Image(systemName: "info.circle.fill")
                    Text("諾蘭介紹")
                        .foregroundColor(Color.primary)
                }
            changeIcon()
                .tabItem {
                    Image(systemName: "wrench.fill")
                    Text("更換icon")
                        .foregroundColor(Color.primary)
                }
        }
        .onAppear {
            let fileURL = Bundle.main.url(forResource: "music", withExtension: "mp3")!
            let playerItem = AVPlayerItem(url: fileURL)
            self.player.replaceCurrentItem(with: playerItem)
            self.player.play()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
