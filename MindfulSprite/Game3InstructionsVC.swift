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
    
    
    var g3:Game!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        
        self.gameText.text = gGame.pageTwo
        self.backgroundImg.image = gGame.backgroundImage
        
        if gGame.pageThree == nil {
            self.nextBtnLabel.hidden = true
            self.newGameBtn.hidden = false
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
