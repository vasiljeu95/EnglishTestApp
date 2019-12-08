//
//  WordsListViewController.swift
//  EnglishTest
//
//  Created by Наташа Лемешевская on 12/7/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class WordsListViewController: UITableViewController {
    
    var wordsList = Word.getWorldsList().sorted(by: <)
    var textField: UITextField?
  
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        wordsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "worldCell", for: indexPath)
        
        cell.textLabel?.text = wordsList[indexPath.row].title
        cell.detailTextLabel?.text = wordsList[indexPath.row].translation
        
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let wordVC = segue.destination as! WordViewController
            wordVC.wordInfo = wordsList[indexPath.row]
        }
    }
    
    @IBAction func addWordAction(_ sender: UIBarButtonItem) {
        showErrorAlert()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {}
}

extension WordsListViewController {
    
    private func showErrorAlert() {
        
        let alertController = UIAlertController(title: "New word", message: "", preferredStyle: .alert)
        alertController.addTextField(configurationHandler: configurationWordTextField)
        alertController.addTextField(configurationHandler: configurationTranslationTextField)
        alertController.addTextField(configurationHandler: configurationDescriprionTextField)

        let saveAction = UIAlertAction(title: "Save", style: .default, handler: { alert -> Void in
            let wordTextField = alertController.textFields![0] as UITextField
            let transTextField = alertController.textFields![1] as UITextField
            let descrTextField = alertController.textFields![2] as UITextField
            
            if  !wordTextField.text!.isEmpty {
                self.wordsList.append(Word(title: wordTextField.text!,
                                      translation: transTextField.text!,
                                      description: descrTextField.text!))
                self.wordsList = self.wordsList.sorted(by: <)
                
                self.tableView.reloadData()
            }
            
        })
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler:nil)
        
        alertController.addAction(saveAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion: nil)
        
    }
    
    func configurationWordTextField(textField: UITextField!) {
            textField.placeholder = "Enter word";
    }
    
    func configurationTranslationTextField(textField: UITextField!) {
            textField.placeholder = "Enter translation";
    }
    
    func configurationDescriprionTextField(textField: UITextField!) {
            textField.placeholder = "Enter descriprion";
    }
           
}
