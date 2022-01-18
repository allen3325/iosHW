//
//  GetOwnedGames.swift
//  FinalProject
//
//  Created by 張哲瑋 on 2022/1/18.
//

//"appid": 4000,
//                "name": "Garry's Mod",
//                "playtime_forever": 3327,
//                "img_icon_url": "4a6f25cfa2426445d0d9d6e233408de4d371ce8b",
//                "img_logo_url": "70ef9d2ec9f0f4560c3cb9fee6cc3665c93c8d0c",
//                "has_community_visible_stats": true,
//                "playtime_windows_forever": 0,
//                "playtime_mac_forever": 0,
//                "playtime_linux_forever": 0

import Foundation

struct getOwnedGames:Decodable{
    let response:resultTwo
    
    struct resultTwo:Decodable{
        let games:[game]
//        let games_count:Int
        
        struct game:Decodable{
            let name:String
            let appid:Int
            let playtime_forever:Int
            let img_icon_url:String
            let img_logo_url:String
            let playtime_windows_forever:Int
        }
    }
}
