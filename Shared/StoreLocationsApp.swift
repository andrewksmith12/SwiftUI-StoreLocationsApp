//
//  StoreLocationsApp.swift
//  Shared
//
//  Created by Andrew Smith on 1/1/21.
//

import SwiftUI


@main
struct StoreLocationsApp: App {
    @StateObject private var store = LocationStore();
    var body: some Scene {
        WindowGroup {
            ContentView(store: testStore)
        }
    }
}
