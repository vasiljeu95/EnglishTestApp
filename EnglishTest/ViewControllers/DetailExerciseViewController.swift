//
//  DetailExerciseViewController.swift
//  EnglishTest
//
//  Created by RusLab on 09.12.2019.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class DetailExerciseViewController: UIViewController {
    
    @IBOutlet weak var taskImage: UIImageView!
    @IBOutlet weak var labelImage: UILabel!
    
    var tasksTitle: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        taskImage.image = UIImage(named:tasksTitle)
        labelImage.text = tasksTitle
        
        // Do any additional setup after loading the view.
    }
    
  
    
}

