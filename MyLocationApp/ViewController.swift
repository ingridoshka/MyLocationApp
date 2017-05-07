//
//  ViewController.swift
//  MyLocationApp
//
//  Created by Ingridoshka on 2017-05-07.
//  Copyright © 2017 MacBook Retina 2014 256Gb. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    
    let locMgr = CLLocationManager()
    
    
    @IBOutlet weak var myLat: UILabel!
    
    @IBOutlet weak var myLong: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locMgr.desiredAccuracy = kCLLocationAccuracyBest
        locMgr.requestWhenInUseAuthorization()
        locMgr.startUpdatingLocation()
        locMgr.delegate = self
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       
        let myCurrentLoc = locations [locations.count - 1]
        
        myLat.text =  "\(myCurrentLoc.coordinate.latitude)"
        myLong.text =  "\(myCurrentLoc.coordinate.longitude)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

