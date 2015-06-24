//
//  GameInstructions.swift
//  MindfulSprite
//
//  Created by Jim Aven on 6/23/15.
//  Copyright (c) 2015 Jim Aven. All rights reserved.
//

import UIKit

class GameInstructions: UIView {

    struct Game {
        let image:UIImage
        let time:String
        let needs:String
        let pageOne:String
        let pageTwo:String?
        let pageThree:String?
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init() {
        self.init(frame:CGRectZero)
    }
    
    let DiscoverYourInnerBreath = Game(
        image: UIImage(named: "greenBackground")!,
        time: "5 minutes",
        needs:"Go to your favorite spot in nature-where you can lie down, such as your garden or backyard.",
        pageOne: "Find a medium sized rock that is smooth and place it on your belly as you lie down. c) As you are lying down on a comfortable piece of land, let all of the muscles in your back relax. d) Hold the rock in place on your belly.",
        pageTwo: "Shut your eyes and listen for your breath. Notice your breath. Notice how it sounds like wind. f) Notice how the rock rises and falls on your belly with the wind of your breath. g) Stay here for 5 minutes.",
        pageThree: nil)
    
    let wakeUpYourInnerEar = Game(image: UIImage(named: "blueBackground")!,
        time: "30 minutes",
        needs: "Partner, blindfold, spoon, comfortable indoor room.",
        pageOne: "Find one friend to play this game with you. b) Choose which of you will be the “ear wake up” buddy and which will wear a blindfold. c) The “ear wake up” buddy takes a spoon in their hand. d) The other friend puts a blindfold over their eyes.",
        pageTwo: "e) The “ear wake up” buddy taps very, very lightly on different pieces of furniture with a spoon and the blindfolded friend tries to guess what the piece of furniture is. For example, if the ear wake up buddy taps on the couch then the blindfolded friend tries to guess that it is a couch.",
        pageThree: "After 5-10 minutes, switch partners.")

    let tastBudAdventure = Game(image: UIImage(named: "purpleBackground")!,
        time: "10 minutes",
        needs: "A favorite snack, blindfold. This is fun by yourself or with friends.",
        pageOne:  "Choose your favorite snack.b) Put the snack on a plate. Sit down and put a blindfold over your eyes.",
        pageTwo: "When you eat your snack, chew every bite 20 times.d) With each bite, notice how the taste of your snack changes.",
        pageThree: "Notice the texture, the flavor, where you feel the snack on your tongue. Notice if you want to swallow or if you get impatient and want to finish chewing. Pay attention to all of the different experiences you go through, as if you are going on an adventure with your tongue.")
    
    let synchronizedBreathing = Game(image: UIImage(named: "purpleBackground")!,
        time: "5 Minutes",
        needs: "A friend and a place for you both to sit, back to back.",
        pageOne: "Find a friend. b) Sit down with your friend with your backs against each other. You should feel your backs touching. c)Try to take ten long deep breaths at the same time. It should feel like you are both breathing the same breath.",
        pageTwo: nil,
        pageThree: nil)
    
    let takeAnAirBath = Game(image: UIImage(named: "bluebackground")!,
        time:"5 minutes",
        needs: " Yourself, a quiet place to be. This activity can be done sitting, standing or lying down.",
        pageOne: "Shut your eyes and feel the air against the skin of your face. b) Feel the air against the skin of your hands. c) Feel the air against your legs.",
        pageTwo: "Notice the air inside of your lungs for ten breaths. e) Where else you can feel the air against your skin?",
        pageThree: nil)
    
    let relaxation = Game(image: UIImage(named: "greenBackground")!,
        time: "5 minutes",
        needs:  "A space to lie down",
        pageOne: "Shut your eyes and take the deepest breath you can possibly take, 10 times. b) With every inhale, imagine that you are filling the areas of tightness or stress in your body with the breath. c) With every exhale image that the breath is sweeping or cleaning or emptying the tightness or stress out of your body completely.",
        pageTwo: nil, pageThree: nil)
    
    let mindfulnessTag = Game(image: UIImage(named: "purpleBackground")!, time: "20 Minutes", needs: "A friend, blindfold, a pot and spoon, or 2 spoons to click together. This can be done indoors or out",
        pageOne: "Find one friend to play this game with. b) Get a blindfold, a pot and a spoon. c) Choose which friend will wear a blindfold and which will take the pot and spoon.",
        pageTwo: "The blindfolded friend sits down. e) The friend with a spoon & a pot walks away from the blindfolded friend and begins tapping the spoon lightly on the pot, while standing still in one place. f) The blindfolded friend tries to tag the friend tapping on the pot, by listening very carefully to the sound of the pot. When found…switch places.",
        pageThree: nil)
    
    let gratitude = Game(image: UIImage(named: "purpleBackground")!,
        time: "10 minutes",
        needs: "5 friends, pencils and paper",
        pageOne: "Each friend should think of 5 things that they are grateful for and write or draw them on a piece of paper. b)	Sit together and have each friend to share with the group, the five things they are grateful for. c) See if you can find 5 friends who are grateful for one of the same things that you are.",
        pageTwo: nil,
        pageThree: nil)
    
    let mindufListening = Game(image: UIImage(named: "blueBackround)")!, time: "15 minutes",
        needs: "A friend, smooth rock, or favorite small object.",
        pageOne: "Choose a close friend that you trust. b) Find a natural place to sit down in a quiet place such as your room or backyard. c) Find a small object or rock that fits in your hand.", pageTwo: "d) Choose one friend to hold the rock for 5 minutes. The friend who is holding the rock takes 5 minutes to share how they are feeling. Are they feeling sad or happy? Did something memorable that happened that day? The person who is not holding the rock silently listens to what the rock holder is saying with out commenting or judging. Practice listening 100%.",
        pageThree: "Now pass the rock and switch roles.")
    
    let memoryGame = Game(image: UIImage(named: "blueBackground")!,
        time: "15 minutes",
        needs: "Numerous objects to choose from  (things found around the house are great)",
        pageOne: "Place 10 random items such as pens, socks and toys onto a tray or in a box. Give yourself 1 minute to look at and  try to remember as many items as he can. You will gets one point for each item he remembers. You will gets one point for each item he remembers.", pageTwo: "Now, cover up the tray with a towel and ask see if you can  recall the items-give yourself a point for each item you remembered correctly. You can keep playing until you get the most possible points.",
        pageThree: nil)

}
