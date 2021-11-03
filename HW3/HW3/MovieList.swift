//
//  MovieList.swift
//  HW3
//
//  Created by 張哲瑋 on 2021/11/3.
//

import Foundation
import SwiftUI

struct movieList: View {
    
    let movies = [
        Movie.tenet,
        Movie.insomnia,

        Movie.dunkirk,
        Movie.interstellar,
        Movie.darkKnightRise,
        Movie.inception,
        Movie.darkKnight,
        Movie.darkKnightBegin,
        Movie.thePrestige,
        Movie.memento
    ]
    
    var body: some View{
        NavigationView {
            List{
                ForEach(movies){ movie in
                    NavigationLink{
                        MovieDetailView(movie: movie)
                    } label:{
                        MovieRow(movie: movie)
                    }
                }
            }
            .navigationTitle("諾蘭電影")
            .foregroundColor(Color.primary)
        }
    }
}
