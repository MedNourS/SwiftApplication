import SwiftUI
import MapKit

extension CLLocationCoordinate2D {
    static let montreal: Self = .init(
        latitude: 45.5,
        longitude: -73.7
    )
    
    
}


struct MapPageView: View {
    let initialPosition: MapCameraPosition = .userLocation(
           fallback: .camera(
            MapCamera(centerCoordinate: .montreal, distance: 150_000)
           ))
    
    var body: some View {
        Map(initialPosition: initialPosition){
//            MapPolyline(ini)
        }
        .mapStyle(.hybrid);

    }}

#Preview {
    MapPageView()
}
