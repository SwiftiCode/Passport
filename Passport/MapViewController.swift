//
//  MapViewController.swift
//  Passport
//
//  Created by Thomas Tay on 19/7/15.
//  Copyright © 2015 Thomas Tay. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var myMapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let italy = MKPointAnnotation()
        italy.coordinate = CLLocationCoordinate2DMake(41.8947400,12.4839000)
        italy.title = "Rome, Italy"
        
        let england = MKPointAnnotation()
        england.coordinate = CLLocationCoordinate2DMake(51.5085300, -0.1257400)
        england.title = "London, England"
        
        let norway = MKPointAnnotation()
        norway.coordinate = CLLocationCoordinate2DMake(59.914225, 10.75256); norway.title = "Oslo, Norway"
        
        let spain = MKPointAnnotation()
        spain.coordinate = CLLocationCoordinate2DMake(40.41694, -3.70081)
        spain.title = "Madrid, Spain"
        
        let locations = [italy, england, norway, spain]
        
        myMapView.addAnnotations(locations)
        
        let myRegion = MKCoordinateRegion.init(center: italy.coordinate, latitudinalMeters: 9000000, longitudinalMeters: 9000000)
        myMapView.setRegion(myRegion, animated: true)
    }

    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        let pin = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pinIdentifier")
        pin.canShowCallout = true
        
        return pin
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
