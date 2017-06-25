//
//  Champion.swift
//  LoL IQ 200
//
//  Created by Yu Lin on 1/22/17.
//  Copyright © 2017 Unknown. All rights reserved.
//

import Foundation

// Champion Enumeration.
enum ChampionsEnum: UInt32 {
    case Annie          //1
    case Olaf           //2
    case Galio          //3
    case TwistedFate    //4
    case XinZhao        //5
    case Urgot          //6
    case LeBlanc        //7
    case Vladimir       //8
    case Fiddlesticks   //9
    case Kayle          //10
    case MasterYi       //11
    case Alistar        //12
    case Ryze           //13
    case Sion           //14
    case Sivir          //15
    case Soraka         //16
    case Teemo          //17
    case Tristana       //18
    case Warwick        //19
    case Nunu           //20
    case MissFortune    //21
    case Ashe           //22
    case Tryndamere     //23
    case Jax            //24
    case Morgana        //25
    case Zilean         //26
    case Singed         //27
    case Evelynn        //28
    case Twitch         //29
    case Karthus        //30
    case ChoGath        //31
    case Amumu          //32
    case Rammus         //33
    case Anivia         //34
    case Shaco          //35
    case DrMundo        //36
    case Sona           //37
    case Kassadin       //38
    case Irelia         //39
    case Janna          //40
    case Gangplank      //41
    case Corki          //42
    case Karma          //43
    case Taric          //44
    case Veigar         //45
    case Trundle        //48
    case Swain          //50
    case Caitlyn        //51
    case Blitzcrank     //53
    case Malphite       //54
    case Katarina       //55
    case Nocturne       //56
    case Maokai         //57
    case Renekton       //58
    case JarvanIV       //59
    case Elise          //60
    case Orianna        //61
    case MonkeyKing     //62
    case Brand          //63
    case LeeSin         //64
    case Vayne          //67
    case Rumble         //68
    case Cassiopeia     //69
    case Skarner        //72
    case Heimerdinger   //74
    case Nasus          //75
    case Nidalee        //76
    case Udyr           //77
    case Poppy          //78
    case Gragas         //79
    case Pantheon       //80
    case Ezreal         //81
    case Mordekaiser    //82
    case Yorick         //83
    case Akali          //84
    case Kennen         //85
    case Garen          //86
    case Leona          //89
    case Malzahar       //90
    case Talon          //91
    case Riven          //92
    case KogMaw         //96
    case Shen           //98
    case Lux            //99
    case Xerath         //101
    case Shyvana        //102
    case Ahri           //103
    case Graves         //104
    case Fizz           //105
    case Volibear       //106
    case Rengar         //107
    case Varus          //110
    case Nautilus       //111
    case Viktor         //112
    case Sejuani        //113
    case Fiora          //114
    case Ziggs          //115
    case Lulu           //117
    case Draven         //119
    case Hecarim        //120
    case KhaZix         //121
    case Darius         //122
    case Jayce          //126
    case Lissandra      //127
    case Diana          //131
    case Quinn          //133
    case Syndra         //134
    case AurelionSol    //136
    case Zyra           //143
    case Gnar           //150
    case Zac            //154
    case Yasuo          //157
    case VelKoz         //161
    case Taliyah        //163
    case Camille        //164
    case Braum          //201
    case Jhin           //202
    case Kindred        //203
    case Jinx           //222
    case TahmKench      //223
    case Lucian         //236
    case Zed            //238
    case Kled           //240
    case Ekko           //245
    case Vi             //254
    case Aatrox         //266
    case Nami           //267
    case Azir           //268
    case Thresh         //412
    case Illaoi         //420
    case RekSai         //421
    case Ivern          //427
    case Kalista        //429
    case Bard           //432
}

// Find the maximun number of ChampionEnum and return the value.
private let count: ChampionsEnum.RawValue = {
    var maxNum: UInt32 = 0
    
    while let _ = ChampionsEnum(rawValue: maxNum) {
        maxNum += 1
    }
    return maxNum
}()

// Pick a random Champion from ChampionEnum and return value.
func randomChampion() -> ChampionsEnum {
    let random = arc4random_uniform(count)
    
    return ChampionsEnum(rawValue: random)!
}

// ChampionArray
let ChampionArray = [
    "Annie",
    "Olaf",
    "Galio",
    "TwistedFate",
    "XinZhao",
    "Urgot",
    "LeBlanc",
    "Vladimir",
    "Fiddlesticks",
    "Kayle",
    "MasterYi",
    "Alistar",
    "Ryze",
    "Sion",
    "Sivir",
    "Soraka",
    "Teemo",
    "Tristana",
    "Warwick",
    "Nunu",
    "MissFortune",
    "Ashe",
    "Tryndamere",
    "Jax",
    "Morgana",
    "Zilean",
    "Singed",
    "Evelynn",
    "Twitch",
    "Karthus",
    "ChoGath",
    "Amumu",
    "Rammus",
    "Anivia",
    "Shaco",
    "DrMundo",
    "Sona",
    "Kassadin",
    "Irelia",
    "Janna",
    "Gangplank",
    "Corki",
    "Karma",
    "Taric",
    "Veigar",
    "Trundle",
    "Swain",
    "Caitlyn",
    "Blitzcrank",
    "Malphite",
    "Katarina",
    "Nocturne",
    "Maokai",
    "Renekton",
    "JarvanIV",
    "Elise",
    "Orianna",
    "MonkeyKing",
    "Brand",
    "LeeSin",
    "Vayne",
    "Rumble",
    "Cassiopeia",
    "Skarner",
    "Heimerdinger",
    "Nasus",
    "Nidalee",
    "Udyr",
    "Poppy",
    "Gragas",
    "Pantheon",
    "Ezreal",
    "Mordekaiser",
    "Yorick",
    "Akali",
    "Kennen",
    "Garen",
    "Leona",
    "Malzahar",
    "Talon",
    "Riven",
    "KogMaw",
    "Shen",
    "Lux",
    "Xerath",
    "Shyvana",
    "Ahri",
    "Graves",
    "Fizz",
    "Volibear",
    "Rengar",
    "Varus",
    "Nautilus",
    "Viktor",
    "Sejuani",
    "Fiora",
    "Ziggs",
    "Lulu",
    "Draven",
    "Hecarim",
    "KhaZix",
    "Darius",
    "Jayce",
    "Lissandra",
    "Diana",
    "Quinn",
    "Syndra",
    "AurelionSol",
    "Zyra",
    "Gnar",
    "Zac",
    "Yasuo",
    "VelKoz",
    "Taliyah",
    "Camille",
    "Braum",
    "Jhin",
    "Kindred",
    "Jinx",
    "TahmKench",
    "Lucian",
    "Zed",
    "Kled",
    "Ekko",
    "Vi",
    "Aatrox",
    "Nami",
    "Azir",
    "Thresh",
    "Illaoi",
    "RekSai",
    "Ivern",
    "Kalista",
    "Bard"
]

// Pick random Champion from the array and return value.
func randomChampionArray() -> String {
    let randomIndex = Int(arc4random_uniform(UInt32(ChampionArray.count)))
    return ChampionArray[randomIndex]
}
