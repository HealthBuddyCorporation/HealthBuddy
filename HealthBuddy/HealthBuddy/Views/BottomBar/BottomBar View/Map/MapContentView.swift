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
        VStack {
            if #available(iOS 17.0, *) {
                Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                    .accentColor(Color(.blue))
                    .onAppear {
                        viewModel.checkIfUserLocationIsEnabled()
                    }
                    .mapStyle(.standard(elevation: .realistic))
            } else {
                // Fallback on earlier versions
            }

//            Button("Add Pin") {
//                viewModel.addPin(pins: &viewModel.pins)
//            }
//            .padding()
//            .background(Color.blue)
//            .foregroundColor(.white)
//            .cornerRadius(8)
//            .padding()
//
//            // Bouton pour supprimer tous les pins
//            Button("Remove All Pins") {
//                viewModel.removeAllPins()
//            }
//            .padding()
//            .background(Color.red)
//            .foregroundColor(.white)
//            .cornerRadius(8)
//            .padding()
        }
    }
}
           

class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate, MKMapViewDelegate {
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.331516, longitude: -121.891054), span: MKCoordinateSpan(latitudeDelta: 0.9, longitudeDelta: 0.9))
    @Published var pins: [MapPin] = []
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

    func checkLocationAuthorization() {
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

    // Fonction pour ajouter un pin
    func addPin(pins: inout [MapPin]) {
        let newPin = MapPin(coordinate: region.center)
        pins.append(newPin)
        updateAnnotations()
    }

    // Fonction pour supprimer tous les pins
    func removeAllPins() {
        pins.removeAll()
        updateAnnotations()
    }

    // Fonction pour mettre à jour les annotations sur la carte
    func updateAnnotations() {
        // Convertir les MapPins en MKPointAnnotations
        let mkAnnotations = pins.map { mapPin -> MKPointAnnotation in
            let annotation = MKPointAnnotation()
            annotation.coordinate = mapPin.coordinate
            return annotation
        }
        annotations = mkAnnotations
    }
}

//struct MapView: UIViewRepresentable {
//    @Binding var pins: [MapPin]
//    @Binding var region: MKCoordinateRegion
//
//    func makeUIView(context: Context) -> MKMapView {
//        let mapView = MKMapView()
//        mapView.delegate = context.coordinator
//        return mapView
//    }
//
//    func updateUIView(_ uiView: MKMapView, context: Context) {
//        updateAnnotations(on: uiView)
//    }
//
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
//
//    private func updateAnnotations(on mapView: MKMapView) {
//        mapView.removeAnnotations(mapView.annotations)
//
//        // Convertissez les MapPins en MKPointAnnotations
//        let mkAnnotations = pins.map { mapPin -> MKPointAnnotation in
//            let annotation = MKPointAnnotation()
//            annotation.coordinate = mapPin.coordinate
//            return annotation
//        }
//
//        mapView.addAnnotations(mkAnnotations)
//        mapView.setRegion(region, animated: true)
//    }
//
//    class Coordinator: NSObject, MKMapViewDelegate {
//        var parent: MapView
//
//        init(_ parent: MapView) {
//            self.parent = parent
//        }
//
//        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
//            let identifier = "pin"
//            var annotationView = mapView.dequeueReusableAnnotationView(withIdentifier: identifier)
//
//            if annotationView == nil {
//                annotationView = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: identifier)
//                annotationView?.canShowCallout = true
//            } else {
//                annotationView?.annotation = annotation
//            }
//
//            return annotationView
//        }
//    }
//}

struct MapContentView_Previews: PreviewProvider {
    static var previews: some View {
        MapContentView()
    }
}




