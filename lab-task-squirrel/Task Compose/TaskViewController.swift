//
//  TaskViewController.swift
//  lab-task-squirrel
//
//  Created by Fredy Camas on 4/26/24.
//

import UIKit

class K {
    static let iForCell = "ItemCell"
}
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
        loadUI()
    }
    
    private func loadUI() {
        tableView = UITableView(frame:view.bounds, style: .plain)
        tableView.register(ItemCell.self, forCellReuseIdentifier: K.iForCell)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
    }
}

extension TaskViewController: UITableViewDelegate{
    
}
extension TaskViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.iForCell, for: indexPath) as!  ItemCell
        cell.configure(with: items[indexPath.row])
        return cell 
    }
    
    
    
}
