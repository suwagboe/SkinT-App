//
//  SkinCareProduct.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 1/7/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import Foundation

// to get the data for the products

struct SkinCareData: Codable {
    let results: [AllProducts]
}

struct AllProducts: Codable {
    
    let name: String
    let mainIngredient: String
    // add the rest of the elements
    
}

