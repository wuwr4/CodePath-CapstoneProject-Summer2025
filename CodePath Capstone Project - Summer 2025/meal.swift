//
//  meal.swift
//  CodePath Capstone Project - Summer 2025
//
//  Created by WanRong Wu on 8/11/25.
//

import Foundation

struct Meal
{
    var name: String
    var description: String
    var avgRating: Int
    var vegetarian: Bool
    
    var imageURL: String?
    var reviews: [String]?
}

struct Location
{
    let name: String
    let address: String
    
    let open: Bool
    let hoursOfOperation: [String]?
}
