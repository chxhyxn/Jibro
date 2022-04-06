//
//  ViewController.swift
//  PointYouWant
//
//  Created by chxhyxn on 2022/03/30.
//

import UIKit
import MapKit
import CoreLocation

var locationManager: CLLocationManager = CLLocationManager() // location manager
var currentLocation: CLLocation! // 내 위치 저장

func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        locationManager = manager
        if CLLocationManager.authorizationStatus() == .authorizedWhenInUse {
            currentLocation = locationManager.location
        }
}

class MapViewController: UIViewController {
    var locationManager: CLLocationManager = CLLocationManager() // location manager
    var currentLocation: CLLocation! // 내 위치 저장
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.mapView.mapType = MKMapType.standard
        self.mapView.showsUserLocation = true
        self.mapView.setUserTrackingMode(.follow, animated: true)
        // Do any additional setup after loading the view.
    }
}

