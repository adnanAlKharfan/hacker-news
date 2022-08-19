//
//  dec.swift
//  sixsteen course app
//
//  Created by adnan alkharfan on 14/07/2021.
//

import Foundation

struct pre:Codable {
    var hits:[post]
}
struct post:Codable,Identifiable {
    var id:String{
        return objectID
    }
    var objectID:String
    var title:String
    var url:String?
    var points:Int
}
