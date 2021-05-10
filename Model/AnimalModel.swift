//
//  AnimalModel.swift
//  Africa
//
//  Created by Alireza TK on 5/10/21.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    var id: String
    var name: String
    var headline: String
    var description: String
    var link: String
    var image: String
    var gallery: [String]
    var fact: [String]
    
}
