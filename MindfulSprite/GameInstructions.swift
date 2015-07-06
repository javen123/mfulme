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

let gamesAray = [discoverYourInnerBreath, discoverYourInnerBreath, wakeUpYourInnerEar, tastebudAdventure, synchronizedBreathing, relaxation, mindfulTag, gratitude, takeAnAirBath, mindfuListening, iAmYouAre]
    
    let discoverYourInnerBreath = Game(
        backgroundImage:UIImage(named: "greenBackground")!,
        title:"Discover Your Inner Breath",
        image: UIImage(named: "discoverInnerBreath")!,
        time: "5 minutes",
        needs:"Go to your favorite spot in nature-where you can lie down, such as your garden or backyard.",
        pageOne: "Find a medium sized rock that is smooth and place it on your belly as you lie down. As you are lying down on a comfortable piece of land, let all of the muscles in your back relax.",
        pageTwo: "Hold the rock in place on your belly.Shut your eyes and listen for your breath. ",
        pageThree: "Notice your breath. Notice how it sounds like wind. Notice how the rock rises and falls on your belly with the wind of your breath. Stay here for 5 minutes.")
    
    let wakeUpYourInnerEar = Game(
        backgroundImage:UIImage(named: "yellowBackground")!,
        title:"Wake Up Your Inner Ear",
        image: UIImage(named: "wakeUpYourEar")!,
            time: "30 minutes",
        needs: "Partner, blindfold, spoon, comfortable indoor room.",
        pageOne: "Find one friend to play this game with you. Choose which of you will be the “ear wake up” buddy and which will wear a blindfold. The “ear wake up” buddy takes a spoon in their hand. The other friend puts a blindfold over their eyes.",
        pageTwo: "The “ear wake up” buddy taps very, very lightly on different pieces of furniture with a spoon and the blindfolded friend tries to guess what the piece of furniture is. For example, if the ear wake up buddy taps on the couch then the blindfolded friend tries to guess that it is a couch.",
        pageThree: "After 5-10 minutes, switch partners.")

    let tastebudAdventure = Game(
        backgroundImage:UIImage(named: "purpleBackground")!,
        title:"Tastbud Adventure",
        image: UIImage(named: "blindfoldEating")!,
        time: "10 minutes",
        needs: "A favorite snack, blindfold. This is fun by yourself or with friends.",
        pageOne:  "Choose your favorite snack. Put the snack on a plate. Sit down and put a blindfold over your eyes.",
        pageTwo: "When you eat your snack, chew every bite 20 times. With each bite, notice how the taste of your snack changes.",
        pageThree: "Notice the texture, the flavor, where you feel the snack on your tongue. Notice if you want to swallow or if you get impatient and want to finish chewing. Pay attention to all of the different experiences you go through, as if you are going on an adventure with your tongue.")
    
    let synchronizedBreathing = Game(
        backgroundImage:UIImage(named: "orangeBackground")!,
        title:"Synchronized Breathing",
        image: UIImage(named: "synchronizedBreathing")!,
        time: "5 Minutes",
        needs: "A friend and a place for you both to sit, back to back.",
        pageOne: "Find a friend and sit down with your backs against each other. You should feel your backs touching.",
        pageTwo: "Try to take ten long deep breaths at the same time. It should feel like you are both breathing the same breath.",
        pageThree: nil)
    
    let takeAnAirBath = Game(
        backgroundImage:UIImage(named: "purpleBackground")!,
        title:"Take An Air Bath",
        image: UIImage(named: "airBathImage")!,
        time:"5 minutes",
        needs: " Yourself, a quiet place to be. This activity can be done sitting, standing or lying down.",
        pageOne: "Shut your eyes and feel the air against the skin of your face. Feel the air against the skin of your hands. Feel the air against your legs.",
        pageTwo: "Notice the air inside of your lungs for ten breaths. Where else you can feel the air against your skin?",
        pageThree: nil)
    
    let relaxation = Game(
        backgroundImage:UIImage(named: "blueBackground")!,
        title:"Relaxation",
        image: UIImage(named: "relaxationImg")!,
        time: "5 minutes",
        needs:  "A space to lie down",
        pageOne: "Shut your eyes and take the deepest breath you can possibly take, 10 times.",
        pageTwo: "With every inhale, imagine that you are filling the areas of tightness or stress in your body with the breath. With every exhale imagine that the breath is sweeping or cleaning or emptying the tightness or stress out of your body completely.",
        pageThree: nil)
    
    let mindfulTag = Game(
        backgroundImage:UIImage(named: "greenBackground")!,
        title:"Mindfulness Tag",
        image: UIImage(named: "mindfulTag")!,
        time: "20 Minutes",
        needs: "A friend, blindfold, a pot and spoon, or 2 spoons to click together. This can be done indoors or out",
        pageOne: "Choose which friend will wear a blindfold and which will take the pot and spoon.",
        pageTwo: "The blindfolded friend sits down. The friend with a spoon & a pot walks away from the blindfolded friend and begins tapping the spoon lightly on the pot, while standing still in one place. ",
        pageThree: "The blindfolded friend tries to tag the friend tapping on the pot, by listening very carefully to the sound of the pot. When found…switch places.")
    
    let gratitude = Game(
        backgroundImage:UIImage(named: "yellowBackground")!,
        title:"Gratitude",
        image: UIImage(named: "gratitude")!,
        time: "10 minutes",
        needs: "5 friends, pencils and paper",
        pageOne: "Each friend should think of 5 things that they are grateful for and write or draw them on a piece of paper. Sit together and have each friend to share with the group, the five things they are grateful for.",
        pageTwo: "See if you can find 5 friends who are grateful for one of the same things that you are.",
        pageThree: nil)
    
    let mindfuListening = Game(
        backgroundImage:UIImage(named: "orangeBackground")!,
        title:"Mindful Listening",
        image: UIImage(named: "mindfulListeningImg")!,
        time: "15 minutes",
        needs: "A friend, smooth rock, or favorite small object.",
        pageOne: "Choose a close friend that you trust. Find a natural place to sit down in a quiet place such as your room or backyard. Find a small object or rock that fits in your hand.",
        pageTwo: "Choose one friend to hold the rock for 5 minutes. The friend who is holding the rock takes 5 minutes to share how they are feeling. Are they feeling sad or happy? Did something memorable that happened that day?",
        pageThree: "The person who is not holding the rock silently listens to what the rock holder is saying with out commenting or judging. Practice listening 100%. Now pass the rock and switch roles.")
    
    let iAmYouAre = Game(
        backgroundImage:UIImage(named: "blueBackground")!,
        title:"I Am / You Are",
        image: UIImage(named: "mindfulListeningImg")!,
        time: "15 minutes",
        needs: "An envelope (or paper to make an envelope), paper, colored pencils, crayons or markers.",
        pageOne: "Find (or make) an envelope to decorate.  Have fun and be creative.  Be sure to include your name.",
        pageTwo: "Now choose a partner. Cut a piece of paper into 10 small pieces. Write a positive word or phrase on each piece of paper that describes your game partner. Examples: ìnice to classmatesî ìis always helpfulî ìgood with wordsî ìsings wellî.  The more specific you can be about this person the better.",
        pageThree: "Now, each player should take the small pieces of paper that describe their partner and putting them their partner ís envelope for their partner to keep")
    



