//
//  Porfile.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/11/26.
//

import Foundation
import SwiftUI

//"steamid": "76561198366201473",
//                "communityvisibilitystate": 3,
//                "profilestate": 1,
//                "personaname": "PlusxPro",
//                "profileurl": "https://steamcommunity.com/profiles/76561198366201473/",
//                "avatar": "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fef49e7fa7e1997310d705b2a6158ff8dc1cdfeb.jpg",
//                "avatarmedium": "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fef49e7fa7e1997310d705b2a6158ff8dc1cdfeb_medium.jpg",
//                "avatarfull": "https://steamcdn-a.akamaihd.net/steamcommunity/public/images/avatars/fe/fef49e7fa7e1997310d705b2a6158ff8dc1cdfeb_full.jpg",
//                "avatarhash": "fef49e7fa7e1997310d705b2a6158ff8dc1cdfeb",
//                "lastlogoff": 1637274234,
//                "personastate": 0,
//                "primaryclanid": "103582791429521408",
//                "timecreated": 1486779551,
//                "personastateflags": 0

struct Profile: View{
    @Binding var id:String
    @Binding var ok:Bool
    @State var personaname = ""
    @State var avatarmedium = URL(string: "")
    @State private var items = [getPlayerSummary.resultTwo.player]()
    var body: some View{
        List{
//            ForEach(items.indices){index in
//                ItemRow(item: items[index])
//            }
            VStack(alignment: .leading) {
                Text(personaname)
                    .bold()
                AsyncImage(url: avatarmedium)
            }
        }
        .onAppear {
            fetchItems(term: id)
        }
    }
    
//    struct ItemRow: View {
//        var body: some View {
//            VStack(alignment: .leading) {
//                Text(personaname)
//                    .bold()
//                AsyncImage(url: avatarmedium)
//            }
//        }
//    }
    
    func fetchItems(term: String) {
        if(term != "")
        {
            let urlStr = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=DB926456846A627A74B8F558AA0F18F2&steamids=\(term)"
            if let url = URL(string: urlStr) {
                URLSession.shared.dataTask(with: url) { data, response , error in
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .secondsSince1970
                    if let data = data {
                        do {
                            let searchResponse = try decoder.decode(getPlayerSummary.self,from: data)
                            personaname = searchResponse.response.players[0].personaname
                            avatarmedium = searchResponse.response.players[0].avatarmedium
                        } catch {
                            print(error)
                        }
                    }
                }.resume()
            }
        }
    }
}
