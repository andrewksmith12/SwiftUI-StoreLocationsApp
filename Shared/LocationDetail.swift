//
//  LocationDetail.swift
//  Sandwiches
//
//  Created by Andrew Smith on 1/1/21.
//

import SwiftUI
import MapKit



struct LocationDetail: View {
    var location: Location
    @State private var zoomed = false
    var body: some View {
        VStack {
            Image(location.imageName)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .frame(height:500)
                .onTapGesture{
                    withAnimation{
                        zoomed.toggle()
                    }
                }
            Label(location.businessType, systemImage: "building.2.fill")
                .font(.headline)
            VStack{
                Text(location.address1)
                Text(location.address2)
            }
            Spacer()
            Text("Get Directions")
                .underline()
                .foregroundColor(.blue)
                /*.onTapGesture {
                    if (UIApplication.shared.canOpenURL(URL(string:"comgooglemaps://")!))
                    {
                        UIApplication.shared.openURL(NSURL(string: "comgooglemaps://?saddr=&daddr=\(location.fullAddress))&directionsmode=driving")! as URL)
                    } else
                    {
                        NSLog("Can't use com.google.maps://");
                    }
                    } */
            Spacer()
            }
            .navigationTitle(location.name)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView {
                LocationDetail(location: testData[3])
            }
            NavigationView {
                LocationDetail(location: testData[2])
            }
        }
    }
}
