//
//  Meal.swift
//  foodtracker
//
//  Created by Justin Snider on 8/29/18.
//  Copyright © 2018 Justin Snider. All rights reserved.
//

import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    
    //MARK: Initialiazation
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Initialization should fail if there is no name or if the rating is nagative.
        
        if name.isEmpty || rating < 0 {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
