//
//  Item.swift
//  lab-task-squirrel
//
//  Created by Fredy Camas on 4/26/24.
//

import UIKit
import CoreLocation

class Item {
    
    let title:String
    let description:String
    var image:UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }
    
    init(title: String, description: String) {
        self.title = title
        self.description = description
    }
    
    func set(_ image: UIImage, with location: CLLocation){
        self.image = image
        self.imageLocation = location
    }
}
