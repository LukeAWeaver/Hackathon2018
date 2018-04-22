//
//  PredictionController.swift
//  Hackathon2018
//
//  Created by Luke Weaver on 4/21/18.
//  Copyright © 2018 Luke Weaver. All rights reserved.
//

import UIKit
import CoreML

class PredictionController: UIViewController{
    
    let model = Bird()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    guard; let prediction = try? model.prediction(image: myImg!);else {
    return prediction.predictionLabel
    }
    
    function check(){
    if predictionLabel.text == "Hummingbird"{
        
    }
    }
    
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}





