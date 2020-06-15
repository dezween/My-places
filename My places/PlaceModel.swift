//
//  PlaceModel.swift
//  My places
//
//  Created by vcslvttv on 10/06/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import RealmSwift

class Place: Object {
    
    @objc dynamic var name = ""
    @objc dynamic var location: String?
    @objc dynamic var type: String?
    @objc dynamic var imageData: Data?
   
    
        let restaurantNames = [
            "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
            "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
            "Speak Easy", "Morris Pub", "Вкусные истории",
            "Классик", "Шок", "Бочка", "Love&Life"
        ]
    
        func savePlaces() {
        
        
            for place in restaurantNames {
                
                let image = UIImage(named: place)
                guard let imageData = image?.pngData() else { return }
                
                
                let newPlace = Place()
                
                newPlace.name = place
                newPlace.location = "Tagil"
                newPlace.type = "Restaurant"
                newPlace.imageData = imageData
                
                StorageManager.saveObject(newPlace)
            }
        
    }
}
