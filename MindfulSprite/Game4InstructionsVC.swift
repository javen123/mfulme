//
//  Game4InstructionsVC.swift
//  MindfulSprite
//
//  Created by Jim Aven on 7/6/15.
//  Copyright (c) 2015 Jim Aven. All rights reserved.
//

import UIKit

class Game4InstructionsVC: UIViewController {

    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var gameText: UILabel!
    @IBOutlet weak var finallyLabel: UILabel!
    
    
    let textColor = UIColor.blackColor()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if globalGame == 2 || globalGame == 7 {
            
            self.gameText.textColor = textColor
            self.finallyLabel.textColor = textColor
        }

        
        self.navigationController?.navigationBarHidden = true
        
        self.gameText.text = gGame.pageThree
        self.backgroundImg.image = gGame.backgroundImage

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func newGameBtn(sender: AnyObject) {
        
        
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
