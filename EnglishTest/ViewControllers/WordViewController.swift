//
//  WordViewController.swift
//  EnglishTest
//
//  Created by Наташа Лемешевская on 12/7/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class WordViewController: UIViewController {
    
    @IBOutlet var imageOfWord: UIImageView!
    @IBOutlet var wordTitle: UILabel!
    @IBOutlet var translation: UILabel!
    @IBOutlet var descriptoin: UILabel!
    
    var wordInfo: Word!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageOfWord.image = UIImage(named: wordInfo.title) ?? UIImage(named: "no image")
        wordTitle.text = wordInfo.title
        translation.text = wordInfo.translation
        descriptoin.text = wordInfo.description
    }
}
