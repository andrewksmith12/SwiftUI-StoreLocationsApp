//
//  LocationStore.swift
//  StoreLocations
//
//  Created by Andrew Smith on 1/2/21.
//

import Foundation

class LocationStore: ObservableObject {
    @Published var locations: [Location]
    init(locations: [Location] = []) {
        self.locations = locations
    }
}

let testStore = LocationStore(locations: testData)

