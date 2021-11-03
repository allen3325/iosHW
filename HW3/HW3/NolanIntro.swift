//
//  NolanIntro.swift
//  HW3
//
//  Created by 張哲瑋 on 2021/11/3.
//

import Foundation
import SwiftUI

struct nolanIntro: View{
    var body: some View{
        ScrollView{
            VStack{
                CustomHeader1(name: "諾蘭介紹")
                TabView{
                    ForEach(1..<4){ number in
                        Image("nolan\(number)")
                            .resizable()
                            .scaledToFit()
                    }
                }
                .background(Color.black)
                .cornerRadius(100)
                .overlay(RoundedRectangle(cornerRadius: 100).stroke(Color.black, lineWidth: 0))
                .padding()
                .frame(height: 500)
                .tabViewStyle(PageTabViewStyle())
                
                Section(header: CustomHeader1(name: "諾蘭簡介")) {
                    Text("""
        如果你不知道這個問題的答案，那請容許我用簡短一分鐘的文字來跟你解釋這位目前在好萊塢片商呼風喚雨的人吧！

        在這速食電影當道的世代下，許多片商都只允許導演翻拍作品或是系列作（小說，電玩....），例如星際大戰、007、漫威、DC、到最近火紅的沙丘等，全部都屬於翻拍及系列作品。然而原創作品呢？許多片商不敢講原創作品商業化，只因需要重新打造口碑，試水溫等。

        然而諾蘭在全世界已經是個品牌，是個不用大把宣傳就會有許多觀眾買票進場的導演。諾蘭善用「時間」的概念玩轉電影本身，是個一直挑戰開創電影新技術的導演！
        """)
                        .padding()
                        .font(.system(size: 20))
                        .foregroundColor(Color.primary)
                }
            }
        }
    }
}

struct CustomHeader1: View {
    let name: String
    var body: some View {
        ZStack {
            Color(red: 84/255, green: 153/255, blue: 199/255)
            HStack {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .padding()
                    .scaledToFit()
                    .foregroundColor(Color.primary)
                Spacer()
            }
        }
    }
}


struct NolanIntro_Previews: PreviewProvider {
    static var previews: some View {
        nolanIntro()
    }
}
