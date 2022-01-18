//
//  OwnedGames.swift
//  FinalProject
//
//  Created by 張哲瑋 on 2022/1/18.
//

import Foundation
import SwiftUI

struct OwnedGames: View{
//    @Binding var id:String
    @State var games = [getOwnedGames.resultTwo.game]()
    let controller = UIAlertController(title: "出現了些錯誤", message: "請檢查steamID是否正確", preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
    @EnvironmentObject var settings: UserSettings
    
    func configureBackground() {
        let barAppearance = UITabBarAppearance()
        barAppearance.backgroundColor = UIColor.white
        UITabBar.appearance().standardAppearance = barAppearance
        UITabBar.appearance().scrollEdgeAppearance = barAppearance
    }
    
    
    var body: some View{
        VStack {
            List{
                ForEach(games, id: \.appid){ game in
                    ProfileShow(item: game)
                }
            }
            .onAppear {
                if games.isEmpty{
                    fetchItems(term: "76561198145976913")
                }
            }
            
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(settings.bgcolor)
    }
    
    
    
    struct ProfileShow: View {
        let item: getOwnedGames.resultTwo.game
        var body: some View {
            VStack(alignment: .leading) {
                Text(item.name)
                    .bold()
                AsyncImage(url: URL(string: "https://media.steampowered.com/steamcommunity/public/images/apps/\(item.appid)/\(item.img_logo_url).jpg"))
            }
        }
    }
    
    func fetchItems(term: String) {
        if(term != "")
        {
            print("term is \(term)")
            let urlStr = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=DB926456846A627A74B8F558AA0F18F2&steamid=\(term)&format=json&include_appinfo=true"
            if let url = URL(string: urlStr) {
                URLSession.shared.dataTask(with: url) { data, response , error in
                    let decoder = JSONDecoder()
                    if let data = data {
                        do {
                            let searchResponse = try decoder.decode(getOwnedGames.self,from: data)
                            if searchResponse.response.games.isEmpty {
                            } else {
                                games = searchResponse.response.games
                            }
                        } catch {
                            print(error)
                        }
                    }
                }.resume()
            }
        }
    }
}

