import UIKit
import GoogleMaps

class ViewController: UIViewController {

  // You don't need to modify the default init(nibName:bundle:) method.

  override func loadView() {
    // Create a GMSCameraPosition that tells the map to display the
    // coordinate -33.86,151.20 at zoom level 6.
    let camera = GMSCameraPosition.camera(withLatitude: 40.416775, longitude: -3.703790, zoom: 6.0)
    let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
    view = mapView

    // Creates a marker in the center of the map.
    let marker = GMSMarker()
    marker.position = CLLocationCoordinate2D(latitude: 40.416328, longitude: -3.683205)
    marker.title = "Parque Retiro"
    marker.snippet = "Madrid"
    marker.map = mapView
  }
}
