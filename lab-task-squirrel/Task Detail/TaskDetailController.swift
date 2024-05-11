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
    
    var doneLabel: UILabel!
    var titleLabel: UILabel!
    var descriptionLabel: UILabel!
    var addPhotoButton: UIButton!
    var mapView:MKMapView!
    
    let buttonTitle = "Add Photo"
    let buttonBackgroundColor = UIColor.systemGreen
    let buttonCornerRadius:CGFloat = 8.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
    }
    
    private func setupUI() {
        addSubview(doneImage)
        addSubview(doneLabel)
        addSubview(titleLabel)
        addSubview(descriptionLabel)
        addSubview(addPhotoButton)
        addSubview(addPhotoButton)
        addSubview(mapView)
        
        NSLayoutConstraint.activate([
            doneImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            doneImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            doneImage.widthAnchor.constraint(equalToConstant: 24),
            doneImage.heightAnchor.constraint(equalToConstant: 24),
        ])
    }
    
}
