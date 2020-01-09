//
//  productModel.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 1/8/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import Foundation


struct Products: Codable {
    
    let name: String
    let purpose: String
    let main_ingredient: String
    let where_to_buy: String
    let link_to_buy: String
    let description: String
    let cost: String
    let imageURL: String
    
    private enum CodingKeys : String, CodingKey {
         case main_ingredient = "main ingredient"
        case where_to_buy = "where to buy"
        case link_to_buy = "link to buy"
        case name, purpose, description, cost, imageURL
     }
    
    
}

/*
"name": "Pure Pearlsation Divine Pearl Cleansing Oil",
"avatar": "https://s3.amazonaws.com/uifaces/faces/twitter/r_garcia/128.jpg",
"purpose": "removes oil - based impurities gently and effectively",
"main ingredient": "Mineral oil",
"where to buy": "Soko Glam",
"link to buy": "https://sokoglam.com/products/klavuu-pure-pearlsation-divine-pearl-cleansing-oil",
"description": "The formula contains a trio of naturally derived oils - safflower seed oil,jojoba seed oil and macadamia seed oil - that in addition to cleansing pores and removing stubborn makeup and sunscreen,soothe and heal dry, cracked skin.The cleanser also contains pearl extracts to brighten.",
"cost": "35",
"imageURL": "https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRalQx636xN94GjP1yqT0fx7m9R-ADY_UbaurW8TtOFwhrTDeZbByZR23liBl6_YsRcUeDUgCARBsJIUhnq2gQGLYqkqR_JdA&usqp=CAc"
*/
