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
    
    let cellElement:UIImageView = {
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
        addSubview(cellElement)
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            cellElement.leadingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            cellElement.centerYAnchor.constraint(equalTo: centerYAnchor),
            cellElement.widthAnchor.constraint(equalToConstant: 24),
            cellElement.heightAnchor.constraint(equalToConstant: 24),
        ])
    }
}
