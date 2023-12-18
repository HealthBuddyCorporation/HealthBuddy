//
//  MapView.swift
//  HealthBuddy
//
//  Created by Raphael Fassotte on 18/12/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var mapRegion = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.0522, longitude: -118.2437),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    @State private var customLocations = [MyPointAnnotation]()
    @State private var showingAlert = false
    @State private var alertTitle = ""
    @State private var locationName = ""
    @State private var selectedAnnotation: MyPointAnnotation?

    var body: some View {
        ZStack {
            CustomMapView(coordinateRegion: $mapRegion, annotations: $customLocations, onNewLocation: { coordinate in
                print("Adding new location")
                locationName = ""
                alertTitle = "New Location"
                selectedAnnotation = MyPointAnnotation(coordinate: coordinate)
                showingAlert = true
            }, onSelectAnnotation: { annotation in
                print("Selecting existing location")
                selectedAnnotation = annotation
                locationName = annotation.title ?? ""
                alertTitle = "Edit Location"
                showingAlert = true
            })
            .ignoresSafeArea()
            
            VStack {
                Spacer()
                HStack {
                    Button(action: zoomIn) {
                        Image(systemName: "plus.magnifyingglass")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .padding(10)
                            .background(Color.gray)
                            .clipShape(Circle())
                    }
                    Button(action: zoomOut) {
                        Image(systemName: "minus.magnifyingglass")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 30, height: 30)
                            .padding(10)
                            .background(Color.gray)
                            .clipShape(Circle())
                    }
                }
                .padding()
                Button(action: deleteCustomLocation) {
                    Image(systemName: "mappin.slash.circle")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .background(Color.gray)
                        .clipShape(Circle())
                }
                .padding()
            }
            .alert(alertTitle, isPresented: $showingAlert) {
                TextField("Location Name", text: $locationName)
                Button("Save") {
                    if let annotation = selectedAnnotation {
                        if alertTitle == "New Location" {
                            var newAnnotation = annotation
                            newAnnotation.title = locationName
                            customLocations.append(newAnnotation)
                        } else if let index = customLocations.firstIndex(where: { $0.id == annotation.id }) {
                            customLocations[index].title = locationName
                        }
                        selectedAnnotation = nil
                    }
                    showingAlert = false
                }
                Button("Delete", role: .destructive) {
                    if let annotation = selectedAnnotation {
                        deleteAnnotation(annotation)
                    }
                    showingAlert = false
                }
                Button("Cancel", role: .cancel) { }
            }
        }
    }

    // Zoom In function
    private func zoomIn() {
        print("Zooming in")
        let zoomLevel = 0.2 // More significant zoom level
        let newSpan = MKCoordinateSpan(
            latitudeDelta: max(mapRegion.span.latitudeDelta * zoomLevel, 0.001),
            longitudeDelta: max(mapRegion.span.longitudeDelta * zoomLevel, 0.001)
        )
        mapRegion = MKCoordinateRegion(center: mapRegion.center, span: newSpan)
    }

    // Zoom Out function
    private func zoomOut() {
        print("Zooming out")
        let zoomLevel = 4.0 // More significant zoom level
        let newSpan = MKCoordinateSpan(
            latitudeDelta: min(mapRegion.span.latitudeDelta * zoomLevel, 180),
            longitudeDelta: min(mapRegion.span.longitudeDelta * zoomLevel, 180)
        )
        mapRegion = MKCoordinateRegion(center: mapRegion.center, span: newSpan)
    }

        private func deleteCustomLocation() {
            print("Deleting custom location")
            if !customLocations.isEmpty {
                customLocations.removeLast()
            }
        }

    private func deleteAnnotation(_ annotation: MyPointAnnotation) {
        customLocations.removeAll { $0.id == annotation.id }
    }
}
    
    struct CustomMapView: UIViewRepresentable {
        @Binding var coordinateRegion: MKCoordinateRegion
        @Binding var annotations: [MyPointAnnotation]
        var onNewLocation: (CLLocationCoordinate2D) -> Void
        var onSelectAnnotation: (MyPointAnnotation) -> Void
        
        func makeUIView(context: Context) -> MKMapView {
            let mapView = MKMapView()
            mapView.delegate = context.coordinator
            mapView.setRegion(coordinateRegion, animated: true)
            mapView.showsUserLocation = true
            
            let tapGesture = UITapGestureRecognizer(target: context.coordinator, action: #selector(Coordinator.mapTapped))
            mapView.addGestureRecognizer(tapGesture)
            
            return mapView
        }
        
        func updateUIView(_ uiView: MKMapView, context: Context) {
            updateAnnotations(for: uiView)
        }
        
        private func updateAnnotations(for mapView: MKMapView) {
            mapView.removeAnnotations(mapView.annotations)
            let newAnnotations = annotations.map { $0.mkPointAnnotation }
            mapView.addAnnotations(newAnnotations)
        }
        
        func makeCoordinator() -> Coordinator {
            Coordinator(self, onNewLocation: onNewLocation, onSelectAnnotation: onSelectAnnotation)
        }
        
        class Coordinator: NSObject, MKMapViewDelegate {
            var parent: CustomMapView
            var onNewLocation: (CLLocationCoordinate2D) -> Void
            var onSelectAnnotation: (MyPointAnnotation) -> Void
            
            init(_ parent: CustomMapView, onNewLocation: @escaping (CLLocationCoordinate2D) -> Void, onSelectAnnotation: @escaping (MyPointAnnotation) -> Void) {
                self.parent = parent
                self.onNewLocation = onNewLocation
                self.onSelectAnnotation = onSelectAnnotation
            }
            
            @objc func mapTapped(gesture: UITapGestureRecognizer) {
                let location = gesture.location(in: gesture.view)
                let coordinate = (gesture.view as! MKMapView).convert(location, toCoordinateFrom: gesture.view)
                onNewLocation(coordinate)
            }
            
            func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
                guard let tappedAnnotation = view.annotation as? MKPointAnnotation else { return }
                
                // Find the corresponding MyPointAnnotation based on coordinate
                if let myAnnotationIndex = self.parent.annotations.firstIndex(where: {
                    $0.coordinate.latitude == tappedAnnotation.coordinate.latitude &&
                    $0.coordinate.longitude == tappedAnnotation.coordinate.longitude
                }) {
                    DispatchQueue.main.async {
                        let myAnnotation = self.parent.annotations[myAnnotationIndex]
                        self.onSelectAnnotation(myAnnotation)
                    }
                }
                mapView.deselectAnnotation(tappedAnnotation, animated: false)
            }
        }
    }
    
    
    struct MyPointAnnotation: Identifiable {
        let id = UUID()
        var coordinate: CLLocationCoordinate2D
        var title: String?
        var subtitle: String?
        
        var mkPointAnnotation: MKPointAnnotation {
            let annotation = MKPointAnnotation()
            annotation.coordinate = coordinate
            annotation.title = title
            annotation.subtitle = subtitle
            return annotation
        }
    }

#Preview {
    MapView()
}
