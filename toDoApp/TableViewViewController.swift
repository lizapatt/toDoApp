//
//  TableViewViewController.swift
//  toDoApp
//
//  Created by Liza Patt on 28/6/22.
//

import UIKit

class TableViewViewController: UITableViewController {

    
    var toDos : [toDo] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toDos = createToDos()
        
    }
    // function returns array of toDo class objects
    func createToDos() -> [toDo]{
        let swift = toDo()
        swift.name = "Learn Swift"
        swift.important = true
        
        let dog = toDo()
        dog.name = "Walk the dog"
        return [swift, dog]
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        let toDo = toDos[indexPath.row]
        
        // Configure the cell...
        if toDo.important {
            cell.textLabel?.text = "!" + toDo.name
        } else {
            cell.textLabel?.text = toDo.name
        }
        return cell
    }




    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
