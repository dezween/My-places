//
//  PlaceModel.swift
//  My places
//
//  Created by vcslvttv on 10/06/2020.
//  Copyright © 2020 MAC. All rights reserved.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var image: UIImage?
    var restaurantImage: String?
   
    
        static let restaurantNames = [
            "Burger Heroes", "Kitchen", "Bonsai", "Дастархан",
            "Индокитай", "X.O", "Балкан Гриль", "Sherlock Holmes",
            "Speak Easy", "Morris Pub", "Вкусные истории",
            "Классик", "Шок", "Бочка", "Love&Life"
        ]
    
        static func getPlaces() -> [Place] {
        
            var places = [Place]()
        
            for place in restaurantNames {
                places.append(Place(name: place, location: "Тагил", type: "Restaurant", image: nil, restaurantImage: place))
            }
        
            return places
    }
}
