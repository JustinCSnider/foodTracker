//
//  foodtrackerTests.swift
//  foodtrackerTests
//
//  Created by Justin Snider on 8/28/18.
//  Copyright © 2018 Justin Snider. All rights reserved.
//

import XCTest
@testable import foodtracker

class foodtrackerTests: XCTestCase {
    //MARK: Meal Class Tests
    
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitilizationSucceeds(){
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initilizer returns nil when passed a negative rating or an empty name.
    func testMealInitalizationFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
    
    
    
}
