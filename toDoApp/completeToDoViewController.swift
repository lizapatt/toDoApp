//
//  completeToDoViewController.swift
//  toDoApp
//
//  Created by Liza Patt on 29/6/22.
//

import UIKit

class completeToDoViewController: UIViewController {
    
    var previousVC = TableViewViewController()
    var selectedToDo = toDo()

    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = selectedToDo.name

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: UIButton) {
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
