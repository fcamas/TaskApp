//
//  ItemCell.swift
//  lab-task-squirrel
//
//  Created by Fredy Camas on 4/26/24.
//

import UIKit
class ItemCell: UITableViewCell {
    
    let titleLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let elementCell:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        setupView()
    }
    
    private func setupView() {
        addSubview(titleLabel)
        addSubview(elementCell)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            elementCell.leadingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            elementCell.centerYAnchor.constraint(equalTo: centerYAnchor),
            elementCell.widthAnchor.constraint(equalToConstant: 24),
            elementCell.heightAnchor.constraint(equalToConstant: 24),
        ])
    }
    
    func configure (with item: Item){
        titleLabel.text = item.title
        titleLabel.textColor = item.isComplete ? .secondaryLabel : .label
        elementCell.image = UIImage(systemName: item.isComplete ?  "checkmark.circle" : "circle")?.withRenderingMode(.alwaysTemplate)
        elementCell.tintColor = item.isComplete ? .systemGreen: .systemRed
    }
}
