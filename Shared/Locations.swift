//
//  Locations.swift
//  Sandwiches
//
//  Created by Andrew Smith on 1/1/21.
//

import Foundation
import CoreLocation

struct Location: Identifiable {
    var id = UUID()
    var name: String
    var businessType: String
    var address1: String
    var address2: String
    var imageName: String
    var fullAddress: String { address1 + " " + address2 }
    var latitude: CLLocationDegrees
    var longitude: CLLocationDegrees
    var location: CLLocation {
        return CLLocation(latitude: self.latitude, longitude: self.longitude)
    }
    func distance(to location: CLLocation) -> CLLocationDistance {
           return location.distance(from: self.location)
    }
}

let testData = [
    Location(name: "Parma Pasta & Pizza", businessType: "Pizzeria", address1: "291 E Round Grove Rd", address2: "Lewisville, TX", imageName:"parma-pasta-pizza", latitude: 33.004822, longitude: -96.986059),
    Location(name: "J Macklin's Grill", businessType: "North American Cuisine", address1: "130 N Denton Tap Rd, Suite 120", address2: "Coppell, TX", imageName:"jMacklins", latitude: 32.972065, longitude: -96.993045),
    Location(name: "Deli Man Grill - Tx", businessType: "North American Cuisine", address1: "605 N Denton Tap Rd", address2: "Coppell, Texas", imageName:"deliman", latitude: 32.98402, longitude: -96.993976),
    Location(name: "I Fratelli Pizza Coppell", businessType: "Pizzeria", address1: "110 W Sandy Lake Rd Ste 106", address2: "Coppell, Texas", imageName:"ifrateli", latitude: 32.970531, longitude: -96.994328),
    Location(name: "Victors Wood Grill", businessType: "Assorted Menu Restaurant", address1: "150 S Denton Dr Ste 101", address2: "Coppell, Texas", imageName:"victors", latitude: 32.966789, longitude: -96.992905),
    Location(name: "Panacean", businessType: "Asian Cuisine", address1: "777 S Macarthur Blvd, Ste 401", address2: "Coppell, TX", imageName:"panacean", latitude: 32.953534, longitude: -96.958652),
    Location(name: "Docs Carwash", businessType: "Car Wash", address1: "2561 Macarthur Blvd", address2: "Lewisville, Texas", imageName:"docscarwash", latitude: 33.001196, longitude: -96.97697),
    Location(name: "Blue Ocean Restaurant", businessType: "Asian Cuisine", address1: "533 State Hwy 121 Bypass", address2: "Lewisville, Texas", imageName:"blueocean", latitude: 33.03726, longitude: -96.989149),
    Location(name: "Kellys Texican", businessType: "Tex Mex", address1: "110 W Sandy Lake Rd #150", address2: "Coppell, Texas", imageName:"KellysTexican", latitude: 32.970531, longitude: -96.994328),
    Location(name: "Tappys Yogurt", businessType: "Dessert", address1: "2780 Macarthur Blvd Ste B", address2: "Lewisville, Texas", imageName:"tappys", latitude: 32.994533, longitude: -96.97595),
    Location(name: "Coppell Deli", businessType: "Assorted Menu Restaurant", address1: "449 W Bethel Rd", address2: "Coppell, Texas", imageName:"newcoppelldeli", latitude: 32.95454, longitude: -97.005607),
    Location(name: "Coppell Tire & Auto", businessType: "Automotive Repair", address1: "1203 Crestside Dr Ste 160", address2: "Coppell, Texas", imageName:"coppelltireauto", latitude: 32.939188, longitude: -97.000895)
]
