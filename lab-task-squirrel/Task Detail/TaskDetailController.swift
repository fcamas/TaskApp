//
//  TaskDetialController.swift
//  lab-task-squirrel
//
//  Created by Fredy Camas on 5/15/24.
//

import UIKit
import MapKit
import PhotosUI

class TaskDetailController: UIViewController{
    
    var item: Item!
    
    var doneImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    var doneLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var addPhotoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var mapView:MKMapView!
    
    let buttonTitle = "Add Photo"
    let buttonBackgroundColor = UIColor.systemGreen
    let buttonCornerRadius:CGFloat = 8.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        configureButton()
        
    }
    
    private func setupUI() {
        
        view.addSubview(doneImage)
        view.addSubview(doneLabel)
        view.addSubview(titleLabel)
        view.addSubview(descriptionLabel)
        view.addSubview(addPhotoButton)
        view.addSubview(mapView)
        
        NSLayoutConstraint.activate([
            doneImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            doneImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            doneImage.widthAnchor.constraint(equalToConstant: 24),
            doneImage.heightAnchor.constraint(equalToConstant: 24),
            
            doneLabel.topAnchor.constraint(equalTo: doneImage.topAnchor),
            doneLabel.leadingAnchor.constraint(equalTo: doneImage.trailingAnchor, constant: 16),
            doneLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -16),
            
            titleLabel.topAnchor.constraint(equalTo: doneImage.bottomAnchor,constant: 16),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
        ])
    }
    
    private func configureButton() {
           addPhotoButton.setTitle(buttonTitle, for: .normal)
           addPhotoButton.backgroundColor = buttonBackgroundColor
           addPhotoButton.layer.cornerRadius = buttonCornerRadius
       }
}
