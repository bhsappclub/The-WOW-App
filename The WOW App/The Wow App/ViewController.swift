//
//  ViewController.swift
//  The Wow App
//
//  Created by Andre Assadi on 3/29/18.
//  Copyright © 2018 BHSAppDevClub. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // create instance of our UILabel
    @IBOutlet weak var wowLabel: UILabel!
    
    // create an array with all the different string values
    let allNames:[String] = ["Yas", "Much Wow", ";)", "LOLOL", "Skrrt"]

    // create new instance of our UISlider function
    @IBAction func sliderMoved(_ sender: UISlider) {

        // create a 'let' constant variable that holds a type 'CGFloat'
        // sliderValue holds the value of the slider from 0 ... 1
        // IMPORTANT: CGFloat is a type of integer like Int, Double, or Float
        let sliderValue:CGFloat = CGFloat( sender.value )
        
        // changes the background color of the view controller. Every View Controller has a default view.
        view.backgroundColor = UIColor(hue: sliderValue, saturation: 1, brightness: 1, alpha: 1)
        
        // changes the font of the label. This is just an equation for changing the size.
        wowLabel.font = wowLabel.font.withSize( (sliderValue * 100) + 20 )
        
        // calls 'changeName' and passes the 'sliderValue' variable
        changeName(value:sliderValue)
        
    }
    
    // function to change the name of the text
    func changeName(value:CGFloat) { // takes the parameter 'value'
        if value < 1 { // if the value is less than one ...
            wowLabel.text = allNames[ Int( floor(value * CGFloat( allNames.count ) ) )] // changes the label text using another equation
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

