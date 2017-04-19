//
//  SpikeBallGroup.swift
//  FantasticFurryDrifters
//
//  Created by Aleksander Makedonski on 4/7/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class EnemyGroup{
    
    static func generateBasicRandomSpikeBall(forParentNode parentNode: SKNode, number: Int){
    
        for _ in 0..<number{
            
            let randomPoint = RandomGenerator.getRandomScreenPoint()
          
            let newSpikeball = Spikeball(position: randomPoint, size: nil, scalingFactor: 0.40)
            
            parentNode.addChild(newSpikeball)
        }
    }
    
    static func generateBasicRandomEnemySun(forParentNode parentNode: SKNode, number: Int){
        
        for _ in 0..<number{
            
            let randomPoint = RandomGenerator.getRandomScreenPoint()
            
            let newEnemySun = EnemySun(position: randomPoint, size: nil, scalingFactor: 0.40)
            
            parentNode.addChild(newEnemySun)
        }
    }
    
    static func generateBasicRandomEnemyCloud(forParentNode parentNode: SKNode, number: Int){
        
        for _ in 0..<number{
            
            let randomPoint = RandomGenerator.getRandomScreenPoint()
            
            let newEnemySun = EnemyCloud(position: randomPoint, size: nil, scalingFactor: 0.40)
            
            parentNode.addChild(newEnemySun)
        }
    }
}
