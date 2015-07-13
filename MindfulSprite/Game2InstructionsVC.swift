//
//  Game2InstructionsVC.swift
//  MindfulSprite
//
//  Created by Jim Aven on 7/1/15.
//  Copyright (c) 2015 Jim Aven. All rights reserved.
//

import UIKit

class Game2InstructionsVC: UIViewController {

    @IBOutlet weak var gameInstructionsLabel: UILabel!
    @IBOutlet weak var nextBtnLabel: UIButton!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var pageTitleLabel: UILabel!
    
    let textColor = UIColor.blackColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if globalGame == 2 || globalGame == 7 {
            
            self.gameInstructionsLabel.textColor = textColor
            self.pageTitleLabel.textColor = textColor
        }

        
        self.navigationController?.navigationBarHidden = true
        
        self.gameInstructionsLabel.text = gGame.pageOne
        self.gameInstructionsLabel.textAlignment = .Justified
        self.backgroundImage.image = gGame.backgroundImage
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    @IBAction func backBtn(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func nextBtn(sender: AnyObject) {
        
        self.performSegueWithIdentifier("game3Segue", sender: self)
        
    }

   
}
