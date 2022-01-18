//
//  GetPlayerSummary.swift
//  HW4
//
//  Created by 張哲瑋 on 2021/11/26.
//

import Foundation

struct getPlayerSummary:Decodable{
    let response:resultTwo
    
    struct resultTwo:Decodable{
        let players:[player]
        
        struct player:Decodable{
            let steamid:String
            let communityvisibilitystate:Int
            let profilestate:Int
            let personaname:String
            let profileurl:URL
            let avatar:URL
            let avatarmedium:URL
            let avatarfull:URL
            let avatarhash:String
            let lastlogoff:Date
            let personastate:Int
            let primaryclanid:String
            let timecreated:Date
            let personastateflags:Int
        }
    }
}
