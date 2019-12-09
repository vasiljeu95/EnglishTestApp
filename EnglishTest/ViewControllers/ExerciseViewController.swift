//
//  ExerciseViewController.swift
//  EnglishTest
//
//  Created by Stepan Vasilyeu on 11/27/19.
//  Copyright © 2019 Stepan Vasilyeu. All rights reserved.
//

import UIKit

class ExerciseViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet var tableView: UITableView!
    
    var tasks = [
        "Прочитать текст",
        "Пересказать текст"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tasks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellEx", for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        cell.imageView?.image = UIImage(named: tasks[indexPath.row])
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "to_excercise", sender: nil)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         if let indexPath = tableView.indexPathForSelectedRow {
             let detailVC = segue.destination as! DetailExerciseViewController
             detailVC.tasksTitle = tasks[indexPath.row]
         }
     }
    
}

