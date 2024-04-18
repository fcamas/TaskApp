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

extension Item {
    static var mockedItems: [Item] {
        let titles = ["Park", "Museum", "Restaurant", "Beach", "Mountain", "Lake", "Cafe", "Zoo", "Library", "Theater"]
        let descriptions = ["Beautiful park with lush greenery", "Fascinating museum showcasing ancient artifacts", "Cozy restaurant with delicious cuisine", "Sandy beach with crystal clear waters", "Majestic mountain offering breathtaking views", "Tranquil lake perfect for fishing", "Charming cafe serving aromatic coffee", "Exciting zoo with exotic animals", "Quiet library filled with books", "Cultural theater hosting captivating performances"]
        
        var items = [Item]()
        for i in 0..<10 {
            let title = titles[i]
            let description = descriptions[i]
            let item = Item(title: title, description: description)
            items.append(item)
        }
        return items
    }
}
