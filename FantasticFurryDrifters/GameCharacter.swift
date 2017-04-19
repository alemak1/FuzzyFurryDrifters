//
//  GameCharacter.swift
//  FantasticFurryDrifters
//
//  Created by Aleksander Makedonski on 4/8/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit

enum GameCharacter{
    case Spikeman
    case Spikeball
    case EnemySun
    case EnemyCloud
    case GoldCoin
    case SilverCoin
    case BronzeCoin
    case EdgeSpikes
    case JetPack
    case BubbleCover
    case OrangePortal
    case YellowPortal
    case RegularCarrot
    case GoldCarrot
    case TiltPlane
    
    
    var title: String?{
        get{
            switch(self){
            case .GoldCoin:
                return GameTextManager.CharacterInformation.GoldCoin.title
            case .SilverCoin:
                return GameTextManager.CharacterInformation.SilverCoin.title
            case .BronzeCoin:
                return GameTextManager.CharacterInformation.BronzeCoin.title
            case .EnemyCloud:
                return GameTextManager.CharacterInformation.EnemyCloud.title
            case .EnemySun:
                return GameTextManager.CharacterInformation.SavageSun.title
            case .Spikeman:
                return GameTextManager.CharacterInformation.Spikeman.title
            case .Spikeball:
                return GameTextManager.CharacterInformation.Spikeball.title
            case .EdgeSpikes:
                return GameTextManager.CharacterInformation.EdgeSpikes.title
            case .JetPack:
                return GameTextManager.CharacterInformation.JetPack.title
            case .BubbleCover:
                return GameTextManager.CharacterInformation.BubbleCover.title
            case .OrangePortal:
                return GameTextManager.CharacterInformation.OrangePortal.title
            case .YellowPortal:
                return GameTextManager.CharacterInformation.YellowPortal.title
            case .RegularCarrot:
                return GameTextManager.CharacterInformation.RegularCarrot.title
            case .GoldCarrot:
                return GameTextManager.CharacterInformation.GoldCarrot.title
            case .TiltPlane:
                return GameTextManager.CharacterInformation.TiltPlane.title
            }
        }
    }
    
    var description: String?{
        get{
            switch(self){
                case .TiltPlane:
                    return GameTextManager.CharacterInformation.TiltPlane.description
                case .Spikeman:
                    return GameTextManager.CharacterInformation.Spikeman.description
                case .Spikeball:
                    return GameTextManager.CharacterInformation.Spikeball.description
                case .EdgeSpikes:
                    return GameTextManager.CharacterInformation.EdgeSpikes.description
                case .GoldCoin:
                    return GameTextManager.CharacterInformation.GoldCoin.description
                case .SilverCoin:
                    return GameTextManager.CharacterInformation.SilverCoin.description
                case .BronzeCoin:
                    return GameTextManager.CharacterInformation.BronzeCoin.description
                case .EnemySun:
                    return GameTextManager.CharacterInformation.SavageSun.description
                case .EnemyCloud:
                    return GameTextManager.CharacterInformation.EnemyCloud.description
                case .JetPack:
                    return GameTextManager.CharacterInformation.JetPack.description
                case .BubbleCover:
                    return GameTextManager.CharacterInformation.BubbleCover.description
                case .YellowPortal:
                    return GameTextManager.CharacterInformation.YellowPortal.description
                case .OrangePortal:
                    return GameTextManager.CharacterInformation.OrangePortal.description
                case .GoldCarrot:
                    return GameTextManager.CharacterInformation.GoldCarrot.description
                case .RegularCarrot:
                    return GameTextManager.CharacterInformation.RegularCarrot.description
                
            }
        }
    }
    
    var image: UIImage?{
        get{
            switch(self){
            case .GoldCoin:
                return #imageLiteral(resourceName: "gold_1")
            case .SilverCoin:
                return #imageLiteral(resourceName: "silver_1")
            case .BronzeCoin:
                return #imageLiteral(resourceName: "bronze_1")
            case .EnemyCloud:
                return #imageLiteral(resourceName: "enemyCloud")
            case .EnemySun:
                return #imageLiteral(resourceName: "sun1")
            case .Spikeman:
                return #imageLiteral(resourceName: "spikeMan_stand")
            case .Spikeball:
                return #imageLiteral(resourceName: "spikeBall1")
            case .EdgeSpikes:
                return #imageLiteral(resourceName: "spike_top")
            case .JetPack:
                return #imageLiteral(resourceName: "jetpack")
            case .OrangePortal:
                return #imageLiteral(resourceName: "portal_orange")
            case .YellowPortal:
                return #imageLiteral(resourceName: "portal_yellow")
            case .BubbleCover:
                return #imageLiteral(resourceName: "bubble")
            case .RegularCarrot:
                return #imageLiteral(resourceName: "carrot")
            case .GoldCarrot:
                return #imageLiteral(resourceName: "carrot_gold")
            case .TiltPlane:
                return #imageLiteral(resourceName: "planeRed1")
            }
            
        }
    }
    
    
}


extension GameCharacter{
    
    var basicTexture: SKTexture?{
        get{
            switch(self){
            case .TiltPlane:
                return
                    TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .Planes)?.textureNamed("planeRed1")
            case .Spikeman:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .SpikeMan)?.textureNamed("spikeMan_jump")
            case .Spikeball:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .SpikeBall)?.textureNamed("spikeBall1")
            case .EnemySun:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .EnemySun)?.textureNamed("sun1")
            case .EnemyCloud:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .EnemyCloud)?.textureNamed("enemyCloud")
            case .GoldCoin:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .GoldCoin)?.textureNamed("gold_1")
            case .SilverCoin:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .SilverCoin)?.textureNamed("silver_1")
            case .BronzeCoin:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .BronzeCoin)?.textureNamed("bronze_1")
            case .GoldCarrot:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .Items)?.textureNamed("carrot_gold")
            case .RegularCarrot:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .Items)?.textureNamed("carrot")
            case .JetPack:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .Items)?.textureNamed("jetpack")
            case .OrangePortal:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .Items)?.textureNamed("portal_orange")
            case .YellowPortal:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .Items)?.textureNamed("portal_yellow")
            case .BubbleCover:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .Items)?.textureNamed("bubble")
            case .EdgeSpikes:
                 return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .Spikes)?.textureNamed("spikes_top")
            default:
                return TextureAtlasManager.sharedInstance.getTextureAtlas(atlasType: .Spikes)?.textureNamed("spikes_top")

                
            }

        }
    }
    
    var basicAnimation: SKAction?{
        get{
            switch(self){
            case .TiltPlane:
                return AnimationFactory.sharedInstance.getPlaneAnimation(color: .Red)
            case .Spikeman:
                return AnimationFactory.sharedInstance.getSpikemanDefaultAnimation()
            case .Spikeball:
                return AnimationFactory.sharedInstance.getSpikeballDefaultAnimation()
            case .EnemySun:
                return AnimationFactory.sharedInstance.getEnemySunDefaultAnimation()
            case .EnemyCloud:
                return AnimationFactory.sharedInstance.getEnemyCloudDefaultAnimation()
            case .GoldCoin:
                return AnimationFactory.sharedInstance.getGoldCoinDefaultAnimation()
            case .SilverCoin:
                return AnimationFactory.sharedInstance.getSilverCoinDefaultAnimation()
            case .BronzeCoin:
                return AnimationFactory.sharedInstance.getBronzeCoinDefaultAnimation()
            case .GoldCarrot:
                return AnimationFactory.sharedInstance.getGoldCarrotDefaultAnimation()
            case .RegularCarrot:
                return AnimationFactory.sharedInstance.getRegularCarrotDefaultAnimation()
            default:
                return SKAction()

            }
            
        }
    }
    
}

extension GameCharacter{
    
    static let profilesArray = [
        
        //MARK: ****** Enemy Profiles
        
        [GameCharacter.Spikeman,
         GameCharacter.Spikeball,
         GameCharacter.EnemySun,
         GameCharacter.EnemyCloud,
         GameCharacter.EdgeSpikes],
        
        //MARK: ********* Game Item Profiles
        
        [ GameCharacter.JetPack,
          GameCharacter.BubbleCover,
          GameCharacter.OrangePortal,
          GameCharacter.YellowPortal],
        
        //MARK: ************ Carrot Item Profiles
        
        [GameCharacter.RegularCarrot,
         GameCharacter.GoldCarrot],
        
        //MARK: ************ Coin Item Profiles
        [GameCharacter.GoldCoin,
         GameCharacter.SilverCoin,
         GameCharacter.BronzeCoin ],
        
        //MARK: ********** Other Game Characters
        [GameCharacter.TiltPlane
        ]
        
    ]
}
