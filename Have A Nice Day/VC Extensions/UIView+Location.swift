//
//  UIView+Location.swift
//  Have A Nice Day
//
//  Created by Denis Sushkov on 29.07.2020.
//  Copyright © 2020 d_sushkov. All rights reserved.
//

import UIKit
import CoreLocation

//MARK: - Location Manager Delegate Methods
extension ViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            UserDefaults.standard.set(location.coordinate.latitude, forKey: "lastLocationLat")
            UserDefaults.standard.set(location.coordinate.longitude, forKey: "lastLocationLon")
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}
