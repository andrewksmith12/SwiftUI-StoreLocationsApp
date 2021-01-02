//
//  ContentView.swift
//  Shared
//
//  Created by Andrew Smith on 1/1/21.
//

import SwiftUI

struct ContentView: View {
    var locations: [Location] = []
    
    var body: some View {
        NavigationView {
            List(locations) { location in
                LocationCell(location:location)
            }
            HStack {
                Spacer()
                Text("Select a Sandwich")
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(locations: testData)
    }
}

struct LocationCell: View {
    var location: Location
    var body: some View {
        NavigationLink(destination: LocationDetail(location:location)){
            Image(location.imageName)
                .resizable()
                .scaledToFit()
                .frame(width:75)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(location.name)
                    .font(.title)
                Text(location.businessType)
                    .font(.title2)
                    .foregroundColor(.purple)
                Text(location.address1)
                    .foregroundColor(.secondary)
                Text(location.address2)
                    .foregroundColor(.secondary)
            }
        }
        .navigationTitle("Locations")
    }
}
