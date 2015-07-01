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
    
    var game2:Game!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if game2.pageTwo == nil {
            self.nextBtnLabel.hidden = true
        }
        
        self.gameInstructionsLabel.text = game2.pageOne
        self.backgroundImage.image = game2.backgroundImage

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtn(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func nextBtn(sender: AnyObject) {
        
        self.performSegueWithIdentifier("game3Segue", sender: self)
        
    }

   
}
