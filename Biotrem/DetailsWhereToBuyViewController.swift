//
//  DetailsWhereToBuyViewController.swift
//  Biotrem
//
//  Created by Marcin Pietrzak on 17.07.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import UIKit
import MapKit

class DetailsWhereToBuyViewController: UIViewController {
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var emailUsButton: UIButton!
    @IBOutlet weak var callUsButton: UIButton!
    @IBOutlet weak var directionButton: UIButton!
    
    var sentData1: String?
    var sentData2: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        
        self.label.text = sentData1
        self.textView.text = sentData2
        
        if (label.text == "DENMARK") {
            setLocation(latitude: 56.26392000000001, longitude: 9.50178500000004)
            pinLocation(latitude: 56.26392000000001, longitude: 9.50178500000004, title: "Fast Pack", subtitle: "")

        }
        
        if (label.text == "ITALY") {
            setLocation(latitude: 41.87194, longitude: 12.567379999999957)
            pinLocation(latitude: 41.87194, longitude: 12.567379999999957, title: "Beata de Santis", subtitle: "")

        }
        
        if (label.text == "NORWAY") {
        setLocation(latitude: 60.47202399999999, longitude: 8.46894599999996)
        pinLocation(latitude: 60.47202399999999, longitude: 8.46894599999996, title: "Tynecka & Padersen Agency", subtitle: "")
        }
        
        if (label.text == "UNITED KINGDOM") {
            setLocation(latitude: 51.628787, longitude: -0.7487575000000106)
            pinLocation(latitude: 51.628787, longitude: -0.7487575000000106, title: "ECOLOTEC Ltd.", subtitle: "")

        }
        
        if (label.text == "FRANCE") {
            setLocation(latitude: 44.7860159, longitude: 0.3491340000000491)
            pinLocation(latitude: 44.7860159, longitude: 0.3491340000000491, title: "Natur’Concept", subtitle: "")

        }
        
        if (label.text == "SPAIN") {
           setLocation(latitude: 41.9029776, longitude: 2.8136217999999644)
            pinLocation(latitude: 41.9029776, longitude: 2.8136217999999644, title: "Effimer", subtitle: "")
        }
        
        if (label.text == "BELARUS") {
            setLocation(latitude: 53.1332821, longitude: 23.143240500000047)
            pinLocation(latitude: 53.1332821, longitude: 23.143240500000047, title: "Ozeon sp. z o.o.", subtitle: "")
        }
        
        if (label.text == "AUSTRIA") {
            setLocation(latitude: 46.5700455, longitude: 13.905321500000014)
            pinLocation(latitude: 46.5700455, longitude: 13.905321500000014, title: "AB Verpackungen", subtitle: "")
        }
        
        if (label.text == "HUNGARY") {
            setLocation(latitude: 47.6679046, longitude: 19.33768710000004)
            pinLocation(latitude: 47.6679046, longitude: 19.33768710000004, title: "Garraspa Kft", subtitle: "")
        }
        
        if (label.text == "SWEDEN") {
            setLocation(latitude: 55.7636261, longitude: 13.053754799999979)
            pinLocation(latitude: 55.7636261, longitude: 13.053754799999979, title: "Carumed AB", subtitle: "")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setLocation(latitude: Double, longitude: Double) {
        //Set up location on the map
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegionMake(CLLocationCoordinate2D(latitude: latitude, longitude: longitude), span)
        mapView.setRegion(region, animated: true)
    }
    
    func pinLocation(latitude: Double, longitude: Double, title: String, subtitle: String){
        //Create Pin on the map view
        let pinLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        let objectAnn = MKPointAnnotation()
        objectAnn.coordinate = pinLocation
        objectAnn.title = title
        objectAnn.subtitle = subtitle
        self.mapView.addAnnotation(objectAnn)
    }
    
    func setDirection(latitude: Double, longitude: Double) {
        //Link to apple maps
        UIApplication.shared.open(URL(string: "http://maps.apple.com/maps?daddr=\(latitude),\(longitude)")!)
    }
    
    func call(number: String){
        //Link to telephone number
        UIApplication.shared.open(URL(string: "tel://\(number)")!)
    }
    
    
    @IBAction func callUs(_ sender: Any) {
        if (label.text == "DENMARK") {
            call(number: "+4551945484")
        }
        
        if (label.text == "ITALY") {
            call(number: "+393393799172")
        }
        
        if (label.text == "NORWAY") {
            call(number: "+4796626370")
        }
        
        if (label.text == "UNITED KINGDOM") {
            call(number: "+447810478968")
        }
        
        if (label.text == "FRANCE") {
            call(number: "+33635205139")
        }
        
        if (label.text == "SPAIN") {
            call(number: "+34972216049")
        }
        
        if (label.text == "BELARUS") {
            call(number: "+48857322272")
        }
        
        if (label.text == "AUSTRIA") {
            call(number: "+436642604106")
        }
        
        if (label.text == "HUNGARY") {
            call(number: "+36302217181")
        }
        
        if (label.text == "SWEDEN") {
            call(number: "+46734100")
        }
        
    }
    
    @IBAction func direction(_ sender: Any) {
        if (label.text == "DENMARK") {
            setDirection(latitude: 56.26392000000001, longitude: 9.50178500000004)
        }
        
        if (label.text == "ITALY") {
            setDirection(latitude: 41.87194, longitude: 12.567379999999957)
        }
        
        if (label.text == "NORWAY") {
            setDirection(latitude: 60.47202399999999, longitude: 8.46894599999996)
        }
        
        if (label.text == "UNITED KINGDOM") {
            setDirection(latitude: 51.628787, longitude: -0.7487575000000106)
        }
        
        if (label.text == "FRANCE") {
            setDirection(latitude: 44.7860159, longitude: 0.3491340000000491)
        }
        
        if (label.text == "SPAIN") {
            setDirection(latitude: 41.9029776, longitude: 2.8136217999999644)
        }
        
        if (label.text == "BELARUS") {
            setDirection(latitude: 53.1332821, longitude: 23.143240500000047)
        }
        
        if (label.text == "AUSTRIA") {
            setDirection(latitude: 46.5700455, longitude: 13.905321500000014)
        }
        
        if (label.text == "HUNGARY") {
            setDirection(latitude: 47.6679046, longitude: 19.33768710000004)
        }
        
        if (label.text == "SWEDEN") {
            setDirection(latitude: 55.7636261, longitude: 13.053754799999979)
        }
    }
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
            if (segue.identifier == "emailSend") {
                let DVC = segue.destination as! EmailUsViewController
                let title = self.label.text
                DVC.sentData1 = title
            }
        }

    }

    


