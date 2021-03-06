//
//  Game3InstructionsVC.swift
//  MindfulSprite
//
//  Created by Jim Aven on 7/1/15.
//  Copyright (c) 2015 Jim Aven. All rights reserved.
//

import UIKit

class Game3InstructionsVC: UIViewController {

    @IBOutlet weak var nextBtnLabel: UIButton!
    @IBOutlet weak var gameText: UILabel!
    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var newGameBtn: UIButton!
    @IBOutlet weak var andNowLabel: UILabel!
    
    let textColor = UIColor.blackColor()
    
    var g3:Game!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if globalGame == 3 || globalGame == 8 {
            
            self.gameText.textColor = textColor
            self.andNowLabel.textColor = textColor
            
        }

        self.navigationController?.navigationBarHidden = true
        
        self.gameText.text = gGame.pageTwo
        self.backgroundImg.image = gGame.backgroundImage
        
        if gGame.pageThree == nil {
            self.nextBtnLabel.hidden = true
        }
        else {
            self.nextBtnLabel.hidden = false
        }

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtn(sender: AnyObject) {
        self.navigationController?.popViewControllerAnimated(true)
    }
   
    @IBAction func nextBtn(sender: AnyObject) {
        performSegueWithIdentifier("game4Segue", sender: self)
    }
   
    @IBAction func newGameBtnPressed(sender: AnyObject) {
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

    
}
