//
//  GameText.swift
//  FantasticFurryDrifters
//
//  Created by Aleksander Makedonski on 4/9/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

import Foundation

class GameTextManager{
    
    
    class CharacterInformation{
        
        class TiltPlane{
            static let title: String = NSLocalizedString("Tilt Plane", comment: "")
            static let description: String = NSLocalizedString("Tilt Planes move across the screen at a constant speed but will fly up when the screen is tilted away from the user, or fly down when the screen is tilted towards the user.", comment: "")
        }
        
        class Spikeman{
            static let title: String = NSLocalizedString("Spikeman", comment: "")
            static let description: String = NSLocalizedString("Spikeman runs along the edges of the screen, waiting for Riddle Rabbit to get stuck on his deadly spike.  Once impaled on Spikeman's spiky head, the player is damaged and cannot move any further. Try as much as possible to avoid this nasty critter!", comment: "")
        }
        
        class Spikeball{
            static let title: String = NSLocalizedString("Spikeball", comment: "")
            static let description: String = "Spikeball is constantly spinning in the air, sometimes moving back and forth, sometimes moving in random directions, and sometimes even trying to chase Riddle Rabbit"
        
        }
        
        class EdgeSpikes{
            static let title = NSLocalizedString("Edge Spikes", comment: "")
            static let description = "Edge spikes remain static along the edges, unlike Spikeman. They cause player damage if hit by the player but will not impale the player."
        }
        
        class GoldCoin{
            static let title = NSLocalizedString("Gold Coin", comment: "")
            static let description = "A gold coin is worth 5 points."
        }
        
        class SilverCoin{
            static let title = NSLocalizedString("Silver Coin", comment: "")
            static let description = "A silver coin is worth 3 points."
        }
        
        class BronzeCoin{
            static let title = NSLocalizedString("Bronze Coin", comment: "")
            static let description = "A bronze coin is worth 1 points."
        }
        
        class SavageSun{
            static let title = NSLocalizedString("Savage Sun", comment: "")
            static let description = "Savage Sun just can't wait to scorch and burn Riddle Rabbit and keep him from collecting coins and carrots."
        }
        
       
        class EnemyCloud{
            static let title = NSLocalizedString("Enemy Cloud", comment: "")
            static let description = "Killer clouds are not like regular backgrounds clouds and can cause damage to Riddle Rabbit.  Try to avoid these nasty clouds at all costs."
        }
        
        class JetPack{
            static let title = "JetPack"
            static let description = "JetPacks allow the player to use touch control on Riddle Rabbit.  When a jetpack is obtained, instead of having to tilt the screen back and forth, just touch down on the riddle rabbit and move him freely around the screen."
        }
        
        class BubbleCover{
            static let title = NSLocalizedString("Bubble Cover", comment: "")
            static let description = "JetPacks allow the player to use touch control on Riddle Rabbit.  When a jetpack is obtained, instead of having to tilt the screen back and forth, just touch down on Riddle Rabbit and move him freely around the screen by dragging him with your finger."
        }
        
        class YellowPortal{
            static let title = NSLocalizedString("Yellow Portal", comment: "")
            static let description = "Yellow portals transport Riddle Rabbit closer to coins."

        }
        
        class OrangePortal{
            static let title = NSLocalizedString("Orange Portal", comment: "")
            static let description = "Orange portals transport Riddle Rabbit closer to carrots."
        }
        
        class GoldCarrot{
            static let title = NSLocalizedString("Gold Carrot", comment: "")
            static let description = "A gold carrot provides full life restoration. These are often heavily guarded by enemies."
        }
        
        class RegularCarrot{
            static let title = NSLocalizedString("Regular Carrot", comment: "")
            static let description = "A regular carrot provides an extra life."
        }
    }
}
