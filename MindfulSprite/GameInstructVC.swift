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
    @IBOutlet weak var gameView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var timeGameLabel: UILabel!
    
    let aGame = gamesAray
    var game:Game!
    
    override func viewWillAppear(animated: Bool) {
        gameNumber(globalGame)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.stepsLabel.textAlignment = .Justified
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "game2Segue"{
            let game:Game2InstructionsVC = segue.destinationViewController as! Game2InstructionsVC
            game.game2 = self.game
            
        }
    }
    @IBAction func kbackBtn(sender: AnyObject) {
        globalGame = 0
        self.dismissViewControllerAnimated(true, completion:nil)
    }
    
    
    @IBAction func gameInstBtn(sender: AnyObject) {
        
        self.performSegueWithIdentifier("game2Segue", sender: self)
    }
    func gameNumber(num: Int) {
        
        let aNum = num - 1
        for (index, element) in enumerate(aGame){
            if aNum == index {
                
                self.backgroundImg.image = element.backgroundImage
                self.gameTitle.text = element.title
                self.stepsLabel.text = "Needs: "
                self.gameText.text = element.needs
                self.timeGameLabel.text = element.time
                self.gameImage.image = element.image
                self.game = element
            }
        }
    }
}
