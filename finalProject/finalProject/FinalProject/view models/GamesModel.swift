//
//  FriendListModel.swift
//  FinalProject
//
//  Created by 張哲瑋 on 2021/12/8.
//

import Foundation
import SwiftUI
import IGDB_SWIFT_API

class GamesModel: ObservableObject{
    
    @Published var items = [Game.gameInfo]()
    
    init(id: String){
        fetchGameList(term: id)
    }
    
    func fetchGameList(term: String) {
        let wrapper: IGDBWrapper = IGDBWrapper(clientID: "ew6tczgnp7vk3mc4903x437rinsfwh", accessToken: "gyi0z4brr54cbrjrjowk1ckwcstrxz")
        
        wrapper.apiJsonRequest(endpoint: .GAMES, apicalypseQuery: "fields *;where rating > 75;sort rating desc;", dataResponse: { json in
//                    print(json)
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .secondsSince1970
                    let searchResponse = try decoder.decode(Game.self, from: json)
                    DispatchQueue.main.async {
                        self.items.append(searchResponse)
                    }
                }, errorResponse: { error in
                    print(error)
                })

//        if(term != "")
//        {
//            if let url = URL(string: url) {
//                URLSession.shared.dataTask(with: url) { data, response , error in
//                    let decoder = JSONDecoder()
//                    decoder.dateDecodingStrategy = .secondsSince1970
//                    if let data = data {
//                        do {
//                            let searchResponse = try decoder.decode(getFriendList.self, from: data)
//                            for friend in searchResponse.friendslist.friends{
//                                idArr.append(friend.steamid)
//                            }
////                            print(idArr)
//                            for id in idArr{
//                                let urlTwo = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=DB926456846A627A74B8F558AA0F18F2&steamids=\(id)"
//                                if let urlTwo = URL(string: urlTwo) {
//                                    URLSession.shared.dataTask(with: urlTwo) { data, response , error in
//                                        let decoder = JSONDecoder()
//                                        decoder.dateDecodingStrategy = .secondsSince1970
//                                        if let data = data {
//                                            do {
//                                                let searchResponse = try decoder.decode(getPlayerSummary.self, from: data)
//                                                if searchResponse.response.players.isEmpty {
//                                                    //                                                    fetchedData = true
//                                                    //                                                    haveData = false
//                                                } else {
//                                                    //                                                    fetchedData = true
//                                                    //                                                    haveData = true
//                                                    DispatchQueue.main.async {
//                                                        self.items.append(searchResponse.response.players[0])
//                                                    }
//                                                }
////                                                print(searchResponse.response.players[0].personaname)
//                                            } catch {
//                                                print(error)
//                                            }
//                                        } else {
//                                            print("error")
//                                        }
//                                    }.resume()
//                                }
//                            }
//                        } catch {
//                            print(error)
//                        }
//                    } else {
//                        print("error")
//                    }
//                }.resume()
//            }
//        }
    }
}
