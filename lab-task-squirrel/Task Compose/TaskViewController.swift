//
//  TaskViewController.swift
//  lab-task-squirrel
//
//  Created by Fredy Camas on 4/26/24.
//

import UIKit

class K {
    static let itemCellIdentifier = "ItemCell"
}
class TaskViewController: UIViewController{
    var tableView: UITableView!
    var emptyStateLabel: UILabel!
    
    var items = [Item]() {
        didSet{
            emptyStateLabel.isHidden = !items.isEmpty
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
        tableView.register(ItemCell.self, forCellReuseIdentifier: K.itemCellIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
        view.addSubview(tableView)
        
        emptyStateLabel = UILabel(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 50))
        emptyStateLabel.center = view.center
        emptyStateLabel.textAlignment = .center
        emptyStateLabel.text = "No Items"
        view.addSubview(emptyStateLabel)
    }
}

extension TaskViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // MARK:- Present detail
    }
}
extension TaskViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.itemCellIdentifier, for: indexPath) as!  ItemCell
        cell.configure(with: items[indexPath.row])
        return cell 
    }
    
    
    
}
