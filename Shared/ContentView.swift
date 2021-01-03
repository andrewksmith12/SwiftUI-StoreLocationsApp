//
//  ContentView.swift
//  Shared
//
//  Created by Andrew Smith on 1/1/21.
//

import SwiftUI
import CoreLocation
import RadarSDK

struct ContentView: View {
    @ObservedObject var store: LocationStore
    var body: some View {
        NavigationView {
            let manager = CLLocationManager()
            List {
                ForEach(store.locations) {
                    location in LocationCell(location:location)
                }
                .onMove(perform: moveLocations)
                .onDelete(perform: deleteLocation)
                HStack {
                    Spacer()
                    Text("There are \(store.locations.count) locations in the system.")
                    Spacer()
                }
            }
            .navigationTitle("Locations")
            .toolbar {
                #if os(iOS)
                HStack{
                    EditButton()
                    Button("Add", action: makeLocation)
                }
                #endif
            }
            Text("Select a Location")
                .font(.largeTitle)
        }
    }
    func moveLocations(from: IndexSet, to: Int) {
        withAnimation {
            store.locations.move(fromOffsets: from, toOffset: to)
        }
    }

    func deleteLocation(offsets: IndexSet){
        withAnimation {
            store.locations.remove(atOffsets:offsets)
        }
    }
    func makeLocation() {
        withAnimation{
            store.locations.append(Location(name: "Coppell Tire & Auto", businessType: "Automotive Repair", address1: "1203 Crestside Dr Ste 160", address2: "Coppell, Texas", imageName:"coppelltireauto", latitude: 32.939188, longitude: -97.000895))
        }
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
                var nope : Void = initializeSDK()
            }
        }
        .navigationTitle("Locations")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(store: testStore)
            ContentView(store: testStore)
                .preferredColorScheme(.dark)
                .environment(\.sizeCategory, .extraExtraExtraLarge)
        }
    }
}


func initializeSDK(){
    Radar.initialize(publishableKey: "prj_test_pk_f1144e714f9dc7fd7663ae484b5eee9571a3d859")
    let locationManager = CLLocationManager()
    locationManager.requestWhenInUseAuthorization()
    Radar.trackOnce { (status: RadarStatus, location: CLLocation?, events: [RadarEvent]?, user: RadarUser?) in
      print(location)
    }
}
