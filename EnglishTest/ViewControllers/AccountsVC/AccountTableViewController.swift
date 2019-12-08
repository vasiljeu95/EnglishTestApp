//
//  TestEnglishLevelViewController.swift
//  EnglishTest
//
//  Created by Stepan Vasilyeu on 11/27/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class AccountTableViewController: UITableViewController {
    
    @IBOutlet var nameUserTitleLabel: UILabel!
    @IBOutlet var nameUserLabel: UILabel!
    @IBOutlet var topicsLabel: UILabel!
    @IBOutlet var countTopicsLabel: UILabel!
    @IBOutlet var levelLabel: UILabel!
    @IBOutlet var determineLevelLabel: UILabel!
    
    let nameIdentifier = "nameAccountsVCIdentifier"
    let topicsIdentifier = "topicsAccountsVCIdentifier"
    let levelIdentifier = "levelAccountsVCIdentifier"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameUserTitleLabel.text = "Имя"
        nameUserLabel.text = "Anna"
        topicsLabel.text = "Выбраные темы"
        countTopicsLabel.text = "2"
        levelLabel.text = "Уровень"
        determineLevelLabel.text = "Проверить"
    }
    
    
    
//    let accountCharacteristicArray = ["Имя", "Выбранные темы", "Уровень"]
//    var detailAccountArray = ["Anna", "2", "Проверить"]
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        accountCharacteristicArray.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "accountCell", for: indexPath)
//
//        cell.textLabel?.text = accountCharacteristicArray[indexPath.row]
//        cell.detailTextLabel?.text = detailAccountArray[indexPath.row]
//
//        return cell
//    }
//
//    // MARK: - Navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard segue.identifier == "nameView" else {return}
//
//        if let indexPath = tableView.indexPathForSelectedRow {
//            let nameAccountVC = segue.destination as! NameAccountsViewController
//            nameAccountVC.nameArray = accountCharacteristicArray[indexPath.row]
//        }
//
//    }

}

//extension AccountViewController {
//    private func showAlert(title: String, message: String) {
//        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let doneAlertAction = UIAlertAction(title: "Done", style: .default)
//
//        alert.addAction(doneAlertAction)
//        present(alert, animated: true)
//    }
//}
