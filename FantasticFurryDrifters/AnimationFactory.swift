//
//  AnimationFactory.swift
//  FantasticFurryDrifters
//
//  Created by Aleksander Makedonski on 4/9/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

import Foundation
import SpriteKit


class AnimationFactory{
    
    //Singleton instance
    static let sharedInstance = AnimationFactory()
    
    //TextureAtlasManager singleton
    let textureAtlasManager = TextureAtlasManager.sharedInstance
    
    //Nested Enum Type for Animations with Different Colored Textures
    enum Color{
        case Blue, Green, Red, Yellow
    }
    
    //BasicAnimations
    var spikemanAnimation: SKAction = SKAction()
    var spikeballAnimation: SKAction = SKAction()
    var enemySunAnimation: SKAction = SKAction()
    var enemyCloudAnimation: SKAction = SKAction()
    var goldCoinAnimation: SKAction = SKAction()
    var silverCoinAnimation: SKAction = SKAction()
    var bronzeCoinAnimation: SKAction = SKAction()
    var regularCarrotAnimation: SKAction = SKAction()
    var goldCarrotAnimation: SKAction = SKAction()
    var planeAnimations = [Color: SKAction]()
    
    private init(){
        
        configureSpikemanAnimation()
        configureSpikeBallAnimation()
        configureEnemySunAnimation()
        configureEnemyCloudAnimation()
        configureGoldCoinAnimation()
        configureSilverCoinAnimation()
        configureBronzeCoinAnimation()
        configureRegularCarrotAnimation()
        configureGoldCarrotAnimation()
        configurePlaneAnimation()
    }
    
    
    //Getter functions for all the basic animations
    func getSpikemanDefaultAnimation() -> SKAction{
        return spikemanAnimation
    }
    
    func getPlaneAnimation(color: AnimationFactory.Color) -> SKAction{
        
        guard let planeAnimation = planeAnimations[color] else { return SKAction() }
        
        return planeAnimation
    }
    
    func getSpikeballDefaultAnimation() -> SKAction{
        return spikeballAnimation
    }
    
    func getEnemyCloudDefaultAnimation() -> SKAction{
        return enemyCloudAnimation
    }
    
    func getEnemySunDefaultAnimation() -> SKAction{
        return enemySunAnimation
    }
    
    func getGoldCoinDefaultAnimation() -> SKAction{
        return goldCoinAnimation
    }
    
    func getSilverCoinDefaultAnimation() -> SKAction{
        return silverCoinAnimation
    }
    
    func getBronzeCoinDefaultAnimation() -> SKAction{
        return bronzeCoinAnimation
    }
  
    func getRegularCarrotDefaultAnimation() -> SKAction{
        return regularCarrotAnimation
    }
    
    func getGoldCarrotDefaultAnimation() -> SKAction{
        return goldCarrotAnimation
    }
    
    private func configurePlaneAnimation(){
        
        planeAnimations = [
            
            Color.Blue : getPlaneAnimation(textureName1: "planeBlue1", textureName2: "planeBlue2", textureName3: "planeBlue3"),
            Color.Green : getPlaneAnimation(textureName1: "planeGreen1", textureName2: "planeGreen2", textureName3: "planeGreen3"),
            Color.Red : getPlaneAnimation(textureName1: "planeRed1", textureName2: "planeRed2", textureName3: "planeRed3"),
            Color.Yellow: getPlaneAnimation(textureName1: "planeYellow1", textureName2: "planeYellow2", textureName3: "planeYellow3")

        ]
    }
    
    //Helper Function for configuring plane animations of different colors
    
    private func getPlaneAnimation(textureName1: String, textureName2: String, textureName3: String) -> SKAction{
        
        guard let texture1 = textureAtlasManager.getTextureAtlas(atlasType: .Planes)?.textureNamed(textureName1), let texture2 = textureAtlasManager.getTextureAtlas(atlasType: .Planes)?.textureNamed(textureName2), let texture3 = textureAtlasManager.getTextureAtlas(atlasType: .Planes)?.textureNamed(textureName3) else { return SKAction() }
        
        let flightAction = SKAction.animate(with: [
            texture1,
            texture2,
            texture3
            ], timePerFrame: 0.25)
        
        return flightAction
        
    }
    
   
  
    

    private func configureSpikemanAnimation(){
        
        guard let texture1 = textureAtlasManager.getTextureAtlas(atlasType: .SpikeMan)?.textureNamed("spikeMan_walk1"), let texture2 = textureAtlasManager.getTextureAtlas(atlasType: .SpikeMan)?.textureNamed("spikeMan_walk2") else { return }
        
        
        let walkAction = SKAction.animate(with: [
            texture1,
            texture2
            ], timePerFrame: 0.25)
        
        spikemanAnimation = walkAction

    }
    
    private func configureSpikeBallAnimation(){
        
        guard let texture1 = textureAtlasManager.getTextureAtlas(atlasType: .SpikeBall)?.textureNamed("spikeBall1"), let texture2 = textureAtlasManager.getTextureAtlas(atlasType: .SpikeBall)?.textureNamed("spikeBall_2") else { return }
        
        spikeballAnimation =  SKAction.animate(with: [
            texture1,
            texture2
            ], timePerFrame: 0.25)
        
    }
    
    private func configureEnemySunAnimation(){
        
        guard let texture1 = textureAtlasManager.getTextureAtlas(atlasType: .EnemySun)?.textureNamed("sun1"), let texture2 = textureAtlasManager.getTextureAtlas(atlasType: .EnemySun)?.textureNamed("sun2") else { return }
        
        
        enemySunAnimation = SKAction.animate(with: [
            texture1,
            texture2
            
            ], timePerFrame: 0.25)
        
        
    }
    
    private func configureEnemyCloudAnimation(){
        
      
        
        let actionGroup1 = SKAction.group([
            SKAction.scale(to: 0.5, duration: 0.50),
            SKAction.colorize(with: ColorGenerator.getColor(colorType: .LightGrey), colorBlendFactor: 1.00, duration: 0.50)
            ])
        
        let actionGroup2 = SKAction.group([
            SKAction.scale(to: 0.30, duration: 0.50),
            SKAction.colorize(with: ColorGenerator.getColor(colorType: .DarkGrey), colorBlendFactor: 1.00, duration: 0.50)
            
            ])
        
        let scalingAction = SKAction.sequence([
            actionGroup1,
            actionGroup2
            ])
        
        enemyCloudAnimation = scalingAction
        
    }
    
    private func configureGoldCoinAnimation(){
        
         guard let texture1 = textureAtlasManager.getTextureAtlas(atlasType: .GoldCoin)?.textureNamed("gold_1"), let texture2 = textureAtlasManager.getTextureAtlas(atlasType: .GoldCoin)?.textureNamed("gold_2"), let texture3 = textureAtlasManager.getTextureAtlas(atlasType: .GoldCoin)?.textureNamed("gold_3") else { return }
        
        let turnAction = SKAction.animate(with: [
            texture1,
            texture2,
            texture3
            ], timePerFrame: 0.40)
        
        let reverseTurnAction = turnAction.reversed()
        
        let defaultAction = SKAction.sequence([
            turnAction,
            reverseTurnAction
            ])
        
        goldCoinAnimation = defaultAction
    }
    
    private func configureSilverCoinAnimation(){
        
        guard let texture1 = textureAtlasManager.getTextureAtlas(atlasType: .SilverCoin)?.textureNamed("silver_1"), let texture2 = textureAtlasManager.getTextureAtlas(atlasType: .SilverCoin)?.textureNamed("silver_2"), let texture3 = textureAtlasManager.getTextureAtlas(atlasType: .SilverCoin)?.textureNamed("silver_3") else { return }
        

        
        let turnAction =  SKAction.animate(with: [
            texture1,
            texture2,
            texture3
            ], timePerFrame: 0.40)
        
        let reverseTurnAction = turnAction.reversed()
        
        let defaultAction = SKAction.sequence([
            turnAction,
            reverseTurnAction
            ])
        
        silverCoinAnimation = defaultAction
    }
    
    private func configureBronzeCoinAnimation(){
        
         guard let texture1 = textureAtlasManager.getTextureAtlas(atlasType: .BronzeCoin)?.textureNamed("bronze_1"), let texture2 = textureAtlasManager.getTextureAtlas(atlasType: .BronzeCoin)?.textureNamed("bronze_2"), let texture3 = textureAtlasManager.getTextureAtlas(atlasType: .BronzeCoin)?.textureNamed("bronze_3") else { return }
        
        let turnAction = SKAction.animate(with: [
            texture1,
            texture2,
            texture3
            ], timePerFrame: 0.40)
        
        let reverseTurnAction = turnAction.reversed()
        
        let defaultAction = SKAction.sequence([
            turnAction,
            reverseTurnAction
            ])
        
        bronzeCoinAnimation = defaultAction
        
    }
    
    private func configureRegularCarrotAnimation(){
        regularCarrotAnimation = SKAction.sequence([
            SKAction.rotate(byAngle: -0.5, duration: 0.50),
            SKAction.rotate(byAngle: 0.5, duration: 0.50)
            ])
    }
    
    private func configureGoldCarrotAnimation(){
        goldCarrotAnimation = SKAction.sequence([
            SKAction.rotate(byAngle: -0.5, duration: 0.50),
            SKAction.rotate(byAngle: 0.5, duration: 0.50)
            ])
    }
}
