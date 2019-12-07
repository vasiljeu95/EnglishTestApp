//
//  DetailRuleViewController.swift
//  EnglishTest
//
//  Created by Vladimir Zhirov on 12/7/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class DetailRuleViewController: UIViewController {
    
      var rule = ""
    
    @IBOutlet weak var ruleNameLabel: UILabel!
    
    @IBOutlet weak var ruleDescriptionLabel: UILabel!
    
    @IBOutlet weak var formsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

      
        ruleNameLabel.text = rule
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
