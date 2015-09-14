//
//  GameInstructions.swift
//  MindfulSprite
//
//  Created by Jim Aven on 6/23/15.
//  Copyright (c) 2015 Jim Aven. All rights reserved.
//

import UIKit




    struct Game {
        let backgroundImage:UIImage
        let title:String
        let image:UIImage
        let time:String
        let needs:String
        let pageOne:String
        let pageTwo:String?
        let pageThree:String?
        
        
    }

let gamesAray = [synchronizedBreathing, relaxation, mindfulTag, gratitude, takeAnAirBath, mindfulListening, iAmYouAre,discoverYourInnerBreath, wakeUpYourInnerEar, tastebudAdventure]
    
    let discoverYourInnerBreath = Game(
        backgroundImage:UIImage(named: "bg_green")!,
        title:"Discover Your Inner Breath",
        image: UIImage(named: "discoverInnerBreathImg")!,
        time: "5 minutes",
        needs:"A favorite spot to lie down, a rock.",
        pageOne: "Go to your favorite spot to lie down (this might be outside in a garden or inside, in you room). Place your rock on your belly.",
        pageTwo: "When you are lying down comfortably, let all of the muscles in your back relax. Hold the rock in place on your belly. Shut your eyes and listen for your breath. Pay attention to your breath and how it sounds like the wind.",
        pageThree: "Notice how the rock rises and falls on your belly with each breath. Try this for 5 minutes.")
    
    let wakeUpYourInnerEar = Game(
        backgroundImage:UIImage(named: "bg_yellow")!,
        title:"Wake Up Your Inner Ear",
        image: UIImage(named: "wakeUpYourEarImg")!,
            time: "30 minutes",
        needs: "A partner, a blindfold, a spoon, a comfortable indoor room. ",
        pageOne: "Find one friend to play this game with you. Choose which of you will be the “ear wake up” buddy and which will wear a blindfold over your eyes. ",
        pageTwo: "The “ear wake up” buddy taps very, very lightly on different pieces of furniture with a spoon while the blindfolded friend tries to guess which piece of furniture is being tapped. It might be a chair or a pillow or a table. For example, if the “ear wake up buddy” taps on the couch then the blindfolded friend tries to guess that it is a couch.  ",
        pageThree: "After 5-10 minutes, switch partners.")

    let tastebudAdventure = Game(
        backgroundImage:UIImage(named: "bg_purple")!,
        title:"Tastbud Adventure",
        image: UIImage(named: "blindfoldEatingImg")!,
        time: "10 minutes",
        needs: "A favorite snack and a blindfold, or something to cover your eyes. This is fun by yourself or with friends.",
        pageOne:  "Choose your favorite snack. Put the snack on a plate. Sit down and put a blindfold over your eyes. When you eat your snack, chew every bite 20 times.",
        pageTwo: "With each bite, notice how the taste of your snack changes. Notice the texture, the flavor, where you feel the snack on your tongue. ",
        pageThree: "Notice if you want to swallow or if you get impatient and want to finish chewing. Pay attention to all of the different experiences you sense.")
    
    let synchronizedBreathing = Game(
        backgroundImage:UIImage(named: "bg_orange")!,
        title:"Synchronized Breathing",
        image: UIImage(named: "synchronizedBreathingImg")!,
        time: "5 Minutes",
        needs: "A friend and a place for you both to sit, back to back.",
        pageOne: "Find a friend. Sit down with your friend back to back. You should feel your backs touching.",
        pageTwo: "Try to take ten long deep breaths at the same time. It should feel like you are both breathing the same breath. Can you breath in synch with each other? ",
        pageThree: nil)
    
    let takeAnAirBath = Game(
        backgroundImage:UIImage(named: "bg_purple")!,
        title:"Take An Air Bath",
        image: UIImage(named: "airBathImg")!,
        time:"5 minutes",
        needs: " Yourself, a quiet place to be. This activity can be done sitting, standing or lying down. ",
        pageOne: "Shut your eyes and feel the air against the skin of your face. Feel the air against the skin of your hands. Feel the air against your legs.",
        pageTwo: "Notice the air inside of your lungs for ten breaths. Where else you can feel the air against your skin? ",
        pageThree: nil)
    
    let relaxation = Game(
        backgroundImage:UIImage(named: "bg_blue")!,
        title:"Relaxation",
        image: UIImage(named: "relaxationImg")!,
        time: "5 minutes",
        needs:  "A space to lie down",
        pageOne: "Shut your eyes and take the deepest breath you can possibly take, 10 times.",
        pageTwo: "With every inhale, imagine that you are filling the areas of tightness in your body with the breath. With every exhale image that the breath is cleaning or emptying the tightness out of your body completely.",
        pageThree: nil)
    
    let mindfulTag = Game(
        backgroundImage:UIImage(named: "bg_green")!,
        title:"Mindfulness Tag",
        image: UIImage(named: "mindfulTagImg")!,
        time: "20 Minutes",
        needs: "A friend, a blindfold, a pot and spoon, or 2 spoons to click together. This can be done indoors or out. Since one person will be blindfolded, make sure you are in a safe place.",
        pageOne: "Choose which friend will wear a blindfold and which will take the pot and spoon. The blindfolded friend sits down.",
        pageTwo: "The friend with a spoon & a pot should walk away from the blindfolded friend and begin tapping the spoon lightly on the pot, while standing still in one place. ",
        pageThree: "The blindfolded friend should try to tag the friend tapping on the pot, by listening very carefully to the sound of the pot. When tagged, switch places.")
    
    let gratitude = Game(
        backgroundImage:UIImage(named: "bg_yellow")!,
        title:"Gratitude",
        image: UIImage(named: "gratitudeImg")!,
        time: "10 minutes",
        needs: "1 to 5 friends, pencils & paper.",
        pageOne: "Each friend should think of 5 things that they are grateful for and write or draw them on a piece of paper. ",
        pageTwo: "Sit together and have each friend to share with the group, the five things they are grateful for. Are you grateful for any of the same things?",
        pageThree: nil)
    
    let mindfulListening = Game(
        backgroundImage:UIImage(named: "bg_orange")!,
        title:"Mindful Listening",
        image: UIImage(named: "mindfulListeningImg")!,
        time: "15 minutes",
        needs: "A friend (or a few friends), a smooth rock (or favorite small object).",
        pageOne: "Choose a close friend or friends that you trust. Find a quiet place to sit down such as your room or backyard. Find a small object or rock that fits in your hand. Choose one friend to hold the object or rock for 5 minutes.",
        pageTwo: "The friend who is holding the rock takes 5 minutes to share how they are feeling. Are they feeling sad or happy? Did something memorable happen that day? The person (or people) not holding the rock silently listen(s) to what the rock holder is saying with out commenting or judging.",
        pageThree: "Practice listening 100%. Now pass the rock and switch roles.")
    
    let iAmYouAre = Game(
        backgroundImage:UIImage(named: "bg_blue")!,
        title:"I Am / You Are",
        image: UIImage(named: "iAmYouAreImg")!,
        time: "15 minutes",
        needs: "Pen or Pencil and paper for each player",
        pageOne: "Together with your friends, create a list of the words or phrases that describe a good and kind person. Take (or make) a paper envelope and decorate your envelope with your name and the things that make you feel good. Maybe it’s a picture of the beach or a snowman, or words like “my sister” or “my pet”.",
        pageTwo: "Separate into groups of 2 partners. Each partner follows these steps: Cut a piece of paper into 10 small pieces. Write a positive word or phrase on each piece of paper that describes your game partner. You may want to look back at the list that you created together for ideas. ",
        pageThree: "Examples: “nice to classmates” “helped me when I needed it “good with words” “sings well” “has a fun hairstyle” “happy smile”  The more specific you can be about this person the better. Now, each player should take the small pieces of paper that describe their partner and place them their partner’s envelope for their partner to keep.  ")
    



