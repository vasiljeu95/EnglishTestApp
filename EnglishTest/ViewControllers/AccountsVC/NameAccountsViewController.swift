//
//  NameAccountsViewController.swift
//  EnglishTest
//
//  Created by Stepan Vasilyeu on 12/5/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class NameAccountsViewController: UIViewController {

    @IBOutlet var nameLebel: UITextField!
    @IBOutlet var nameButton: UIButton!
    
    var nameArray: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func addNameButton(_ sender: Any) {
        
    }
    
}

// MARK: - Extension
extension NameAccountsViewController: UITextFieldDelegate {
    
    // Скрываем клавиатуру нажатием на "Done"
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Скрытие клавиатуры по тапу за пределами Text Field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true) // Скрывает клавиатуру, вызванную для любого объекта
    }
    
}

