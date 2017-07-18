//
//  OfferDetailsViewController.swift
//  Biotrem
//
//  Created by Marcin Pietrzak on 17.07.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import UIKit

class OfferDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var whereToBuyButton: UIButton!
    @IBOutlet weak var webView: UIWebView!
    
    var sentData1: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
        
        self.navigationItem.title = sentData1
        
        if navigationItem.title == "PLATE 20 cm (7,9 IN)" {
            let url = NSURL(string: "http://biotrem.pl/en/products/plate-20-cm/")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        if navigationItem.title == "PLATE 24 cm (9,4 IN)" {
            let url = NSURL(string: "http://biotrem.pl/en/products/plate-24-cm/")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        if navigationItem.title == "PLATE 28 cm (11 IN)" {
            let url = NSURL(string: "http://biotrem.pl/en/products/plate-28-cm/")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        if navigationItem.title == "OVAL BOWL 24X16CM (9,4X6,3IN)" {
            let url = NSURL(string: "http://biotrem.pl/en/products/oval-plate-24x16/")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        if navigationItem.title == "BOWL 20CM (7,9IN)" {
            let url = NSURL(string: "http://biotrem.pl/en/products/bowl-20-cm/")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
        
        if navigationItem.title == "CUTLERY" {
            let url = NSURL(string: "http://biotrem.pl/en/products/cutlery/")
            let request = URLRequest(url: url! as URL)
            webView.loadRequest(request)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
