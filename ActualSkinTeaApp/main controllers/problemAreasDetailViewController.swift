//
//  problemAreasDetailViewController.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 1/7/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class problemAreasDetailViewController: UIViewController {

    // outlets
    
            //Buttons
    @IBOutlet weak var oilyOutlet: UIButton!
    @IBOutlet weak var dryOutlet: UIButton!
    @IBOutlet weak var irritatedOutlet: UIButton!
    @IBOutlet weak var hyperPigOutlet: UIButton!
    
            //Sliders
    
    @IBOutlet weak var oilySliderOutlet: UISlider!
    @IBOutlet weak var drySliderOutlet: UISlider!
    @IBOutlet weak var irritatedSliderOutlet: UISlider!
    @IBOutlet weak var hyperPigSliderOutlet: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // start out with the button red and not enabled
        
        oilyOutlet.tintColor = .red
        oilySliderOutlet.tintColor = .red
        oilySliderOutlet.isEnabled = false
        oilySliderOutlet.isHidden = true

        
        dryOutlet.tintColor = .red
        drySliderOutlet.tintColor = .red
        drySliderOutlet.isEnabled = false
        drySliderOutlet.isHidden = true
        
        irritatedOutlet.tintColor = .red
        irritatedSliderOutlet.tintColor = .red
        irritatedSliderOutlet.isEnabled = false
        irritatedSliderOutlet.isHidden = true

        
        hyperPigOutlet.tintColor = .red
        hyperPigSliderOutlet.tintColor = .red
        hyperPigSliderOutlet.isEnabled = false
        hyperPigSliderOutlet.isHidden = true

        
    }
    
    func activateSlider(){
        
    }
    
    //actions
    
    
    @IBAction func oilyButton(_ sender: UIButton) {
        
       // if sender.isSelected == true {
            oilyOutlet.tintColor = .white
            oilySliderOutlet.tintColor = .white
            oilySliderOutlet.isEnabled = true
     oilySliderOutlet.isHidden = false

        }
    
    
    
    @IBAction func dryButton(_ sender: UIButton) {
        dryOutlet.tintColor = .white
                    drySliderOutlet.tintColor = .white
        drySliderOutlet.isHidden = false
                    drySliderOutlet.isEnabled = true
        drySliderOutlet.isHidden = false

    }
    
    
    @IBAction func irritatedButton(_ sender: UIButton) {
        irritatedOutlet.tintColor = .white
                           irritatedSliderOutlet.tintColor = .white
                         irritatedSliderOutlet.isEnabled = true
        irritatedSliderOutlet.isHidden = false

    }
    
    
    @IBAction func hyperPigButton(_ sender: UIButton) {
         hyperPigOutlet.tintColor = .white
                            hyperPigSliderOutlet.tintColor = .white
                            hyperPigSliderOutlet.isEnabled = true
        hyperPigSliderOutlet.isHidden = false

    }
    
        
        
        
    }
    
    
    
    
    
// if button is not clicked then it should be red and the slider is not activated.
    
    
    

