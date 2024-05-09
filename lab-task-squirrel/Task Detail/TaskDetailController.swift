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
    
    var doneImage: UIImageView!
    var doneLabel: UILabel!
    var titleLabel: UILabel!
    var descrptionLabel: UILabel!
    var addPhotoButton: UIButton!
    var mapView:MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
    }
    
}
