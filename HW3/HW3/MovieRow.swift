//
//  MovieRow.swift
//  HW3
//
//  Created by 張哲瑋 on 2021/11/3.
//

import Foundation
import SwiftUI

struct MovieRow: View {
    
    let movie: Movie
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: movie.picURL)!){ image in
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipped()
            } placeholder: {
                Color.green
            }
            .padding()
            VStack(alignment: .leading) {
                Text(movie.name)
            }
            Spacer()
        }
    }
                        
}
