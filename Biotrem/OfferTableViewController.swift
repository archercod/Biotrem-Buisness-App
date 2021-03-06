//
//  OfferTableViewController.swift
//  Biotrem
//
//  Created by Marcin Pietrzak on 17.07.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import UIKit

class OfferTableViewController: UITableViewController {
    
    let imageList = ["tableware1.jpg", "tableware2.jpg", "tableware3.jpg", "tableware4.jpg", "tableware5.jpg", "tableware6.jpg"]
    
    let offerList = ["PLATE 20 cm (7,9 IN)", "PLATE 24 cm (9,4 IN)", "PLATE 28 cm (11 IN)", "OVAL BOWL 24X16CM (9,4X6,3IN)", "BOWL 20CM (7,9IN)", "CUTLERY"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: self, action: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return offerList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "offerCell", for: indexPath) as! OfferTableViewCell

        // Configure the cell...
        cell.cellTitle.text = offerList[indexPath.row]
        cell.cellImageView.image = UIImage(named: imageList[indexPath.row])

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if (segue.identifier == "offerDetail") {
            
            let DVC = segue.destination as! OfferDetailsViewController
            
            if let indexpath = self.tableView.indexPathForSelectedRow {
                let title = offerList[indexpath.row] as String
                DVC.sentData1 = title
            }
            
        }

        
    }
    

}
