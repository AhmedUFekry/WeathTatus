//
//  LocationManager.swift
//  WeathTatus
//
//  Created by A7med Fekry on 17/05/2024.
//

import Foundation
import CoreLocation
import MapKit
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    var locationManager = CLLocationManager()
    @Published var authorizationStatus: CLAuthorizationStatus = .notDetermined
    @Published var lastKnownLocation: CLLocation?
    

    override init() {
        super.init()
        self.locationManager.delegate = self
        self.authorizationStatus = CLLocationManager.authorizationStatus()
    }

    func requestAuthorization() {
        self.locationManager.requestWhenInUseAuthorization()
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        self.authorizationStatus = manager.authorizationStatus
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.lastKnownLocation = locations.last
    }
}

