//
//  Data.swift
//  InterfaceAdvanced006_HW
//
//  Created by Nurbek on 02/11/23.
//

import Foundation

class Data {
    var name: String
    var lastSeen: String
    var profileImage: String
    var text: String
    var postImage: String
    
    init(name: String, lastSeen: String, profileImage: String, text: String, postImage: String) {
        self.name = name
        self.lastSeen = lastSeen
        self.profileImage = profileImage
        self.text = text
        self.postImage = postImage
    }
}
