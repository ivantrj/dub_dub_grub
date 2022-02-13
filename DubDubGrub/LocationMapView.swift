//
//  LocationMapView.swift
//  DubDubGrub
//
//  Created by Ivan Trajanovski on 2021. 11. 25..
//

import SwiftUI
import MapKit

struct LocationMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:                                                      46.076380, longitude: 18.228940),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    var body: some View {
        ZStack {
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            VStack {
                Image("ddg-map-logo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .shadow(radius: 10)
                Spacer()
            }
        }
    }
}

struct LocationMapView_Previews: PreviewProvider {
    static var previews: some View {
        LocationMapView()
    }
}
