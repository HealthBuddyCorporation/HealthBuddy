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
    @State private var showAlert = false

    var body: some View {
        VStack {
            if #available(iOS 17.0, *) {
                Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                    .accentColor(Color(.blue))
                    .onAppear {
                        viewModel.checkIfUserLocationIsEnabled()
                    }
                    .mapStyle(.standard(elevation:.realistic))
                    .overlay(
                        VStack {
                            Spacer()
                            Button("Ajouter Localisation") {
                                showAlert = true
                            }
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            .padding()
                        }
                    )
                    .alert(isPresented: $showAlert) {
                        Alert(
                            title: Text("Ajouter Localisation"),
                            message: Text("Ajouter une localisation à la carte ?"),
                            primaryButton: .default(Text("Annuler")),
                            secondaryButton: .default(Text("Ajouter"), action: {
                                viewModel.addLocation()
                            })
                        )
                    }
            } else {
                // Fallback on earlier versions
            }
        }
    }
}

class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate, MKMapViewDelegate {

    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.9, longitudeDelta: 0.9))
    @Published var annotations: [MKPointAnnotation] = []

    var locationManager: CLLocationManager?

    func checkIfUserLocationIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
            locationManager!.delegate = self
        } else {
            print("Vous devez activer la localisation pour accéder à cette fonctionnalité")
        }
    }

    func checkLocationAuthorization(){
        guard let locationManager = locationManager else { return }

        switch locationManager.authorizationStatus {
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Localisation restreinte")
        case .denied:
            print("Vous n'avez pas donné votre accord, changez cela dans les paramètres")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        @unknown default:
            break
        }
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }

    func addLocation() {
        // Ajouter une nouvelle annotation à la liste
        let newAnnotation = MKPointAnnotation()
        newAnnotation.coordinate = region.center
        annotations.append(newAnnotation)
    }

    // MKMapViewDelegate function to customize annotation views
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard annotation is MKPointAnnotation else { return nil }

        let identifier = "pinAnnotation"
        var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)

        if annotationView == nil {
            annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
            annotationView?.canShowCallout = true
        } else {
            annotationView?.annotation = annotation
        }

        return annotationView
    }
}

struct MapContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapContentView()
    }
}


