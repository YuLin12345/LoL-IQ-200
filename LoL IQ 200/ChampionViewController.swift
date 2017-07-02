//
//  ChampionViewController.swift
//  LoL IQ 200
//
//  Created by Yu Lin on 1/22/17.
//  Copyright © 2017 Unknown. All rights reserved.
//

import UIKit

struct championQuestion {
    var question : UIImage!
    var answers : [String]!
    var answer : Int!
}

class ChampionViewController: UIViewController {
    
    // Variables.
    var questions = [championQuestion]()
    var questionNumber = Int()
    var answerNumber = Int()
    var score = 0
    
    // Buttons.
    @IBOutlet var buttonCollection: [UIButton]! // Question button collection.
    
    // Images.
    @IBOutlet weak var image: UIImageView!  // Question image.
    
    // Labels.
    @IBOutlet weak var scoreLabel: UILabel! // Score label.
    @IBOutlet weak var gameOverScoreLabel: UILabel! // GameOver score label.
    
    // Views.
    @IBOutlet weak var gameOver: UIView!    // GameOver view.
    
    // Button Actions.
    @IBAction func button1(_ sender: Any) {
        if answerNumber == 1 {
            pickQuestion()
        }
        else {
            endGame()
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if answerNumber == 2 {
            pickQuestion()
        }
        else {
            endGame()
        }
    }
    
    @IBAction func button3(_ sender: Any) {
        if answerNumber == 3 {
            pickQuestion()
        }
        else {
            endGame()
        }
    }
    
    @IBAction func button4(_ sender: Any) {
        if answerNumber == 4 {
            pickQuestion()
        }
        else {
            endGame()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = String(score)
        
        // Bad way to do this. Hard coded.
        // Soultion: Turn it into .JSON and parse it.
        // Problem: Same name will appear twice, from time to time.
        
        questions = [
            
            championQuestion(question: UIImage(named: "Annie"), answers: [String(describing: ChampionsEnum.Annie), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Olaf"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Olaf)], answer: 4),
            
            championQuestion(question: UIImage(named: "Galio"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Galio), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "XinZhao"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.XinZhao), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Urgot"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Urgot)], answer: 4),
            
            championQuestion(question: UIImage(named: "Leblanc"), answers: [String(describing: ChampionsEnum.LeBlanc), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Vladimir"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Vladimir), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "FiddleSticks"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Fiddlesticks), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Kayle"), answers: [String(describing: ChampionsEnum.Kayle), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "MasterYi"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.MasterYi), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Alistar"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Alistar), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Ryze"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Ryze), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Sion"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Sion), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Sivir"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Sivir), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Soraka"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Soraka), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Teemo"), answers: [String(describing: ChampionsEnum.Teemo), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Tristana"), answers: [String(describing: ChampionsEnum.Tristana), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Warwick"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Warwick)], answer: 4),
            
            championQuestion(question: UIImage(named: "Nunu"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Nunu)], answer: 4),
            
            championQuestion(question: UIImage(named: "MissFortune"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.MissFortune), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Ashe"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Ashe)], answer: 4),
            
            championQuestion(question: UIImage(named: "Tryndamere"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Tryndamere), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Jax"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Jax), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Morgana"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Morgana), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Zilean"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Zilean), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Singed"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Singed), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Evelynn"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Evelynn), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Twitch"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Twitch), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Karthus"), answers: [String(describing: ChampionsEnum.Karthus), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Chogath"), answers: [String(describing: ChampionsEnum.ChoGath), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Amumu"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Amumu), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Rammus"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Rammus), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Anivia"), answers: [String(describing: ChampionsEnum.Anivia), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Shaco"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Shaco)], answer: 4),
            
            championQuestion(question: UIImage(named: "DrMundo"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.DrMundo)], answer: 4),
            
            championQuestion(question: UIImage(named: "Sona"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Sona), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Kassadin"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Kassadin), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Irelia"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Irelia), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Janna"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Janna), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Gangplank"), answers: [String(describing: ChampionsEnum.Gangplank), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Corki"), answers: [String(describing: ChampionsEnum.Corki), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Karma"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Karma), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Taric"), answers: [String(describing: ChampionsEnum.Taric), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Veigar"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Veigar)], answer: 4),
            
            championQuestion(question: UIImage(named: "Trundle"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Trundle), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Swain"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Swain), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Caitlyn"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Caitlyn), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Blitzcrank"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Blitzcrank), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Malphite"), answers: [String(describing: ChampionsEnum.Malphite), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Katarina"), answers: [String(describing: ChampionsEnum.Katarina), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Nocturne"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Nocturne), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Maokai"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Maokai), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Renekton"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Renekton), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "JarvanIV"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.JarvanIV), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Elise"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Elise), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Orianna"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Orianna)], answer: 4),
            
            championQuestion(question: UIImage(named: "MonkeyKing"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.MonkeyKing)], answer: 4),
            
            championQuestion(question: UIImage(named: "Brand"), answers: [String(describing: ChampionsEnum.Brand), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "LeeSin"), answers: [String(describing: ChampionsEnum.LeeSin), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Vayne"), answers: [String(describing: ChampionsEnum.Vayne), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Rumble"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Rumble), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Cassiopeia"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Cassiopeia)], answer: 4),
            
            championQuestion(question: UIImage(named: "Skarner"), answers: [String(describing: ChampionsEnum.Skarner), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Heimerdinger"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Heimerdinger), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Nasus"), answers: [String(describing: ChampionsEnum.Nasus), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Nidalee"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Nidalee), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Udyr"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Udyr)], answer: 4),
            
            championQuestion(question: UIImage(named: "Poppy"), answers: [String(describing: ChampionsEnum.Poppy), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Gragas"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Gragas), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Pantheon"), answers: [String(describing: ChampionsEnum.Pantheon), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Ezreal"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Ezreal), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Mordekaiser"), answers: [String(describing: ChampionsEnum.Mordekaiser), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Yorick"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Yorick)], answer: 4),
            
            championQuestion(question: UIImage(named: "Akali"), answers: [String(describing: ChampionsEnum.Akali), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Kennen"), answers: [String(describing: ChampionsEnum.Kennen), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Garen"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Garen)], answer: 4),
            
            championQuestion(question: UIImage(named: "Leona"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Leona)], answer: 4),
            
            championQuestion(question: UIImage(named: "Malzahar"), answers: [String(describing: ChampionsEnum.Malzahar), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Talon"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Talon), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Riven"), answers: [String(describing: ChampionsEnum.Riven), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "KogMaw"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.KogMaw), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Shen"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Shen)], answer: 4),
            
            championQuestion(question: UIImage(named: "Lux"), answers: [String(describing: ChampionsEnum.Lux), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Xerath"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Xerath), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Shyvana"), answers: [String(describing: ChampionsEnum.Shyvana), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Ahri"), answers: [String(describing: ChampionsEnum.Ahri), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Graves"), answers: [String(describing: ChampionsEnum.Graves), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Fizz"), answers: [String(describing: ChampionsEnum.Fizz), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Volibear"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Volibear)], answer: 4),
            
            championQuestion(question: UIImage(named: "Rengar"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Rengar), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Varus"), answers: [String(describing: ChampionsEnum.Varus), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Nautilus"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Nautilus)], answer: 4),
            
            championQuestion(question: UIImage(named: "Viktor"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Viktor), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Sejuani"), answers: [String(describing: ChampionsEnum.Sejuani), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Fiora"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Fiora)], answer: 4),
            
            championQuestion(question: UIImage(named: "Ziggs"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Ziggs), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Lulu"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Lulu), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Draven"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Draven)], answer: 4),
            
            championQuestion(question: UIImage(named: "Hecarim"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Hecarim), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Khazix"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.KhaZix), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Darius"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Darius)], answer: 4),
            
            championQuestion(question: UIImage(named: "Jayce"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Jayce), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Lissandra"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Lissandra), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Diana"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Diana)], answer: 4),
            
            championQuestion(question: UIImage(named: "Quinn"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Quinn), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Syndra"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Syndra), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "AurelionSol"), answers: [String(describing: ChampionsEnum.AurelionSol), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Zyra"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Zyra)], answer: 4),
            
            championQuestion(question: UIImage(named: "Gnar"), answers: [String(describing: ChampionsEnum.Gnar), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Zac"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Zac)], answer: 4),
            
            championQuestion(question: UIImage(named: "Yasuo"), answers: [String(describing: ChampionsEnum.Yasuo), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Velkoz"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.VelKoz)], answer: 4),
            
            championQuestion(question: UIImage(named: "Taliyah"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Taliyah), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Camille"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Camille), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Braum"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Braum)], answer: 4),
            
            championQuestion(question: UIImage(named: "Jhin"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Jhin), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Kindred"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Kindred), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Jinx"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Jinx)], answer: 4),
            
            championQuestion(question: UIImage(named: "TahmKench"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.TahmKench), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Lucian"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Lucian), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Zed"), answers: [String(describing: ChampionsEnum.Zed), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Kled"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Kled)], answer: 4),
            
            championQuestion(question: UIImage(named: "Ekko"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Ekko), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Vi"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Vi), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Aatrox"), answers: [String(describing: ChampionsEnum.Aatrox), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Nami"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Nami)], answer: 4),
            
            championQuestion(question: UIImage(named: "Azir"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Azir), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Thresh"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Thresh), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Illaoi"), answers: [String(describing: ChampionsEnum.Illaoi), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "RekSai"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.RekSai), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Ivern"), answers: [String(describing: randomChampion()), String(describing: randomChampion()), String(describing: ChampionsEnum.Ivern), String(describing: randomChampion())], answer: 3),
            
            championQuestion(question: UIImage(named: "Kalista"), answers: [String(describing: randomChampion()), String(describing: ChampionsEnum.Kalista), String(describing: randomChampion()), String(describing: randomChampion())], answer: 2),
            
            championQuestion(question: UIImage(named: "Bard"), answers: [String(describing: ChampionsEnum.Bard), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Rakan"), answers: [String(describing: ChampionsEnum.Rakan), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1),
            
            championQuestion(question: UIImage(named: "Xayah"), answers: [String(describing: ChampionsEnum.Xayah), String(describing: randomChampion()), String(describing: randomChampion()), String(describing: randomChampion())], answer: 1)
        ]
        
        pickQuestion()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // Pick question function.
    func pickQuestion() {
        
        gameOver.isHidden = true
        
        scoreLabel.text = String(score)
        score = score + 1
        
        if questions.count > 0 {
            questionNumber = Int(arc4random()) % questions.count
            
            image.image = questions[questionNumber].question
            
            answerNumber = questions[questionNumber].answer
            
            for i in 0 ..< buttonCollection.count {
                
                buttonCollection[i].setTitle(questions[questionNumber].answers[i], for: .normal)
            }
            questions.remove(at: questionNumber)
        }
        else {
            gameOver.isHidden = false
            gameOverScoreLabel.text = String(200)
        }
    }
    
    // End game function.
    func endGame() {
        gameOver.isHidden = false
        score = score - 1
        gameOverScoreLabel.text = String(score)
    }
}
