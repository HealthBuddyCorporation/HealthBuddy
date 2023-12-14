//
//  MapContentView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 06/12/2023.
//

import SwiftUI
import MapKit

struct MapContentView: View {
    
    @StateObject private var viewModel = ContentViewModel()
    var body: some View {
        if #available(iOS 17.0, *) {
            Map()
                .accentColor(Color(.blue))
                .onAppear{
                    viewModel.checkIfUserLocationIsEnabled()
                }
        } else {
            // Fallback on earlier versions
        }
//        ZStack{
//            Rectangle()
//                .frame(width: 380, height: 380)
//                .foregroundColor(.black.opacity(0.4))
//                .position(x:215, y:20)
//        }
    }
}

#Preview {
    MapContentView()
}

final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    var locationManager: CLLocationManager?
    
    func checkIfUserLocationIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
            locationManager!.delegate = self
        } else {
            print("vous devez activer la localisation pour accéder à cette fonctionnalité")
        }
    }
    
    func checkLocationAuthorization(){
        guard let locationManager = locationManager else { return }
        
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("localisation restreinte")
        case .denied:
            print("vous n'avez pas donnez votre accord, changez cela dans les settings")
        case .authorizedAlways, .authorizedWhenInUse:
            break
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}
