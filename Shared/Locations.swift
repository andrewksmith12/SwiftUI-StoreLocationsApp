//
//  Locations.swift
//  Sandwiches
//
//  Created by Andrew Smith on 1/1/21.
//

import Foundation

struct Location: Identifiable {
    var id = UUID()
    var name: String
    var businessType: String
    var address1: String
    var address2: String
    var imageName: String
    var fullAddress: String { address1 + " " + address2 }
}

let testData = [
    Location(name: "Parma Pasta & Pizza", businessType: "Pizzeria", address1: "291 E Round Grove Rd", address2: "Lewisville, TX", imageName:"parma-pasta-pizza"),
    Location(name: "J Macklin's Grill", businessType: "North American Cuisine", address1: "130 N Denton Tap Rd, Suite 120", address2: "Coppell, TX", imageName:"jMacklins"),
    Location(name: "Deli Man Grill - Tx", businessType: "North American Cuisine", address1: "605 N Denton Tap Rd", address2: "Coppell, Texas", imageName:"deliman"),
    Location(name: "I Fratelli Pizza Coppell", businessType: "Pizzeria", address1: "110 W Sandy Lake Rd Ste 106", address2: "Coppell, Texas", imageName:"ifrateli"),
    Location(name: "Victors Wood Grill", businessType: "Assorted Menu Restaurant", address1: "150 S Denton Dr Ste 101", address2: "Coppell, Texas", imageName:"victors"),
    Location(name: "Panacean", businessType: "Asian Cuisine", address1: "777 S Macarthur Blvd, Ste 401", address2: "Coppell, TX", imageName:"panacean"),
    Location(name: "Docs Carwash", businessType: "Car Wash", address1: "2561 Macarthur Blvd", address2: "Lewisville, Texas", imageName:"docscarwash"),
    Location(name: "Blue Ocean Restaurant", businessType: "Asian Cuisine", address1: "533 State Hwy 121 Bypass", address2: "Lewisville, Texas", imageName:"blueocean"),
    Location(name: "Kellys Texican", businessType: "Tex Mex", address1: "110 W Sandy Lake Rd #150", address2: "Coppell, Texas", imageName:"KellysTexican"),
    Location(name: "Tappys Yogurt", businessType: "Dessert", address1: "2780 Macarthur Blvd Ste B", address2: "Lewisville, Texas", imageName:"tappys"),
    Location(name: "Coppell Deli", businessType: "Assorted Menu Restaurant", address1: "449 W Bethel Rd", address2: "Coppell, Texas", imageName:"newcoppelldeli"),
    Location(name: "Coppell Tire & Auto", businessType: "Automotive Repair", address1: "1203 Crestside Dr Ste 160", address2: "Coppell, Texas", imageName:"coppelltireauto"),
]
