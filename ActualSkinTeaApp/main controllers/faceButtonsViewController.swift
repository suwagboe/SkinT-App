//
//  faceButtonsViewController.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 1/5/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class faceButtonsViewController: UIViewController {
    
    //MARK: OUTLETS AND VARIABLES
    
    @IBOutlet weak var foreheadButton: UIButton!
    @IBOutlet weak var leftcheekButton: UIButton!
    @IBOutlet weak var rightCheekButton: UIButton!
    @IBOutlet weak var noseButton: UIButton!
    @IBOutlet weak var chinButton: UIButton!
    
    @IBOutlet weak var imFinishedButton: UIButton!
    
    var placeHolder = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: ACTIONS MAKE IMPACTS
    
    
    @IBAction func forheadButton(_ sender: UIButton) {
        placeHolder = "forehead"
        // MARK: BUTTONS NEED TO BE CONNECTED TO THE ACTUAL VIEW CONTROLLER AND NOT THE NAVIGATION CONTROLLER...
        // when the button is click I want it to added to the problemsAreasListController
        performSegue(withIdentifier: "forehead" , sender: self)
    }
    
    @IBAction func leftCheekButton(_ sender: UIButton) {
        
        placeHolder = "left cheek"
        
        performSegue(withIdentifier: "left", sender: self)
    }
    
    @IBAction func rightCheekButton(_ sender: UIButton) {
        
        placeHolder = "right cheek"
        
        performSegue(withIdentifier: "right", sender: self)
    }
    
    @IBAction func chinButton(_ sender: UIButton) {
        placeHolder = "chin"
        
        performSegue(withIdentifier: "chin", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let navController = segue.destination as? UINavigationController, let listController = navController.viewControllers.first as? problemAreasListViewController {
            
            listController.selectedArea.insert(placeHolder, at: 0)
            
            //listController.selectedArea = [self.placeHolder]
            //listController?.selectedArea = [self.placeHolder]
        }
    }
    
    @IBAction func finishedButton(_ sender: UIButton) {
         
       
        }
        
    }
    

