//
//  MovieDetail.swift
//  HW3
//
//  Created by 張哲瑋 on 2021/10/20.
//

import Foundation
import SwiftUI
import AVKit

struct MovieDetailView: View{
    let movie: Movie
    @State private var picHasShown = false
    var body: some View {
        ScrollView{
            LazyVStack{
                VStack {
                    if(picHasShown){
                        AsyncImage(url: URL(string: movie.picURL)) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .transition(.opacity)
                        } placeholder: {
                            Color.white
                        }
                    }
                }
                .animation(.linear(duration: 1))
                .padding()
                CustomHeader1(name: movie.name+"電影簡介")
                Text(movie.description)
                    .padding()
                if(movie.videoURL != ""){
                    CustomHeader1(name: movie.name+" trailer")
                    VideoPlayer(player: AVPlayer(url:  URL(string: movie.videoURL)! ))
                        .frame(height: 300)
                        .padding()
                }
                else{
                    Link(destination: URL(string:movie.videoYTURL)!, label: {
                        VStack{
                            Text("預告點我")
                        }
                    })
                }
                Spacer()
            }
            .navigationTitle(movie.name)
            .onAppear {
                self.picHasShown = true
            }
            .onDisappear {
                self.picHasShown = false
                
            }
        }
    }
}
