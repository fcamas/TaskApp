//
//  TaskViewController.swift
//  lab-task-squirrel
//
//  Created by Fredy Camas on 4/26/24.
//

import UIKit

class TaskViewController: UIViewController{
    var tableView: UITableView!
    var empyStateLabel: UILabel!
    
    var items = [Item]() {
        didSet{
            empyStateLabel.isHidden = !items.isEmpty
            tableView.reloadData()
        }
    }
    
    var titleText: String  = "Task"{
        didSet{
            title = titleText
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

extension TaskViewController: UITableViewDelegate{
    
}
extension TaskViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
}
