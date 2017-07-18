//
//  WhereToBuyTableViewController.swift
//  Biotrem
//
//  Created by Marcin Pietrzak on 17.07.2017.
//  Copyright © 2017 Marcin Pietrzak. All rights reserved.
//

import UIKit

class WhereToBuyTableViewController: UITableViewController {
    
    let listItems = ["DENMARK", "ITALY", "NORWAY", "UNITED KINGDOM", "FRANCE", "SPAIN", "BELARUS", "AUSTRIA", "HUNGARY", "SWEDEN"]
    
    let adressList = ["Fast Pack\nkontakt@fastpack.dk\n+45 51945484\nwww.fastpack.dk", "Beata de Santis\nbeatrice.desantis@biotrem.eu\n+39 339 379 917", "Tynecka&Pedersen Agency\n+47 966 26 370\nmtp@tyneckapedersen.no\nwww.biotrem.no", "ECOLOTEC Ltd.\n18 High Street\nHigh Wycombe HP11 2BE\nUnited Kingdom\n+44 7810 478 968\nenquiries@ecolotec.com\nwww.ecolotec.com", "Natur’Concept\nLe petit marteau\n24240 Gageac et Rouillac\nCharlie BERNARD\n+33 635 205 139/nnaturconcept24@gmail.com\nwww.natur-concept.com", "Effimer\nAvinguda Mas Vila, 184 Polígon Industrial Girona\n17457 Riudellots de la Selva\n+34 972 21 60 49\ninfo@effimer.com\nwww.effimer.com", "Ozeon Sp. z o.o.\nul. Św. Rocha 11/1 lok. 407\n15-879 Białystok\n+48 85 732 22 72\nbiuro.ozeon@gmail.com", "AB Verpackungen\nKirchenweg 15\n9583 Faak am See\n+43 664 2604106\noffice@abverpackungen.com\nwww.abverpackungen.com", "Garraspa Kft\nH-2113 Erdőkertes\nRét u. 11\n+36 30 2217181\nnatur@ecocatering.hu\nwww.ecocatering.hu", "Carumed AB\nFöretagshusvägen 5\n244 93 Kävlinge\n+46 73 41 00\ninfo@carumed.se"]

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
        return listItems.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "whereToBuyCell", for: indexPath) as! WhereToBuyTableViewCell

        // Configure the cell...
        cell.label.text = listItems[indexPath.row]
        cell.textView.text = adressList[indexPath.row]

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
        
        if (segue.identifier == "whereToBuyDetail") {
            
            let DVC = segue.destination as! DetailsWhereToBuyViewController
            
            if let indexpath = self.tableView.indexPathForSelectedRow {
                let title = listItems[indexpath.row] as String
                DVC.sentData1 = title
                
                let description = adressList[indexpath.row] as String
                DVC.sentData2 = description
            }
            
        }

        
    }
    

}
