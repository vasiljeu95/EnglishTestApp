//
//  RuleTableViewController.swift
//  EnglishTest
//
//  Created by Vladimir Zhirov on 12/7/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class RuleTableViewController: UITableViewController {
    
        var ruleToPass = ""
    
//        var times = [String]()
//        var verbs = [String]()
    
        var rules = [String]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        rules = ["Глагол  to be в Present Simple",
                 "Глагол to do в Present Simple",
                 "Глагол to have в Present Simple"]
       
//        times = ["Present Simple","Present Continuous"]
//        verbs = ["to be", "to do", "to have"]
    
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return rules.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ruleCell", for: indexPath)

        cell.textLabel?.text = rules[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected cell #\(indexPath.row)!")
      
        // Get Cell Label
        let indexPath = tableView.indexPathForSelectedRow!
        let currentCell = tableView.cellForRow(at: indexPath)! as UITableViewCell
        
        self.ruleToPass = currentCell.textLabel?.text! ?? ""
        
        print(ruleToPass)
        
        performSegue(withIdentifier: "goToDetailRule", sender: self)
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
     
    override func prepare( for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToDetailRule" {
            
            let detailVC = segue.destination as! DetailRuleViewController

            detailVC.rule = self.ruleToPass
            
            print("called")

        }
    }
}
