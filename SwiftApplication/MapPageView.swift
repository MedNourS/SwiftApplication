import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let montreal: Self = .init(
        latitude: 45.5,
        longitude: -73.7
    )
}


struct MapViewPage: UIViewRepresentable {

    func makeUIView(context: Context) -> MKMapView {
        
        let mapView = MKMapView()
        mapView.mapType = .hybrid


        let centerCoordinate = CLLocationCoordinate2D.montreal
        let distance: CLLocationDistance = 50000 // meters

        let region = MKCoordinateRegion(center: centerCoordinate, latitudinalMeters: distance, longitudinalMeters: distance)

        mapView.setRegion(region, animated: true)
        mapView.showsUserLocation = true

        return mapView
    }

    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}



struct MapPageView: View {

    var body: some View {
        MapViewPage()
            .ignoresSafeArea()
    }
}

#Preview {
    MapPageView()
}
