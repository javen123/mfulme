//
//  GameInstructVC.swift
//  MindfulSprite
//
//  Created by Jim Aven on 7/1/15.
//  Copyright (c) 2015 Jim Aven. All rights reserved.
//

import UIKit

class GameInstructVC: UIViewController {

    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var gameTitle: UILabel!
    @IBOutlet weak var stepsLabel: UILabel!
    @IBOutlet weak var gameImage: UIImageView!
    @IBOutlet weak var gameText: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeGameLabel: UILabel!
    
    let textColor = UIColor.blackColor()
    let aGame = gamesAray
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gGame = gamesAray[globalGame]
        
        if globalGame == 2 || globalGame == 7 {
           
            self.gameText.textColor = textColor
            self.timeGameLabel.textColor = textColor
            self.gameTitle.textColor = textColor
            self.timeGameLabel.textColor = textColor
            self.timeLabel.textColor = textColor
        }
        
        self.navigationController?.navigationBarHidden = true
        self.gameText.text = gGame.needs
        self.timeGameLabel.text = gGame.time
        self.gameTitle.text = gGame.title
        self.backgroundImg.image = gGame.backgroundImage
        
        self.stepsLabel.textAlignment = .Justified
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    

    @IBAction func kbackBtn(sender: AnyObject) {
        globalGame = 0
        gGame = nil
        
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    
    @IBAction func gameInstBtn(sender: AnyObject) {
        
        self.performSegueWithIdentifier("game2Segue", sender: self)
    }
    
    
}
