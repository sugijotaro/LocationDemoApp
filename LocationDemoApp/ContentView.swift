//
//  ContentView.swift
//  LocationDemoApp
//
//  Created by JotaroSugiyama on 2023/07/09.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()

    var body: some View {
        VStack {
            if let location = locationManager.location {
                Text("Latitude: \(location.coordinate.latitude)")
                Text("Longitude: \(location.coordinate.longitude)")
            } else {
                Text("Location not available")
            }
        }.padding()
    }
}
