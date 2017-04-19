//
//  ContactComponent.swift
//  FantasticFurryDrifters
//
//  Created by Aleksander Makedonski on 4/7/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

import Foundation
import GameplayKit

class GKInteractionComponent: GKComponent, SKPhysicsContactDelegate{
    
    //MARK: ********** Reference to parent's physics body
    var physicsBody: SKPhysicsBody?{
        get{
            if let parentPhysicsBody = self.entity?.component(ofType: GKPhysicsBodyComponent.self)?.parentPhysicsBody{
                return parentPhysicsBody
            }
            
            return nil
        }
    }
   
    override init() {
        super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    func contactWithPlayer(){
        
    }
    
    func contactWithEnemy(){
        
    }
    
    func contactWithGoldCarrot(){
        
    }
    
    func contactWithRegularCarrot(){
        
        
    }
    
    func contactWithGoldCoin(){
        
    }
    
    func contactWithSilverCoin(){
        
    }
    
    func contactWithBronzeCoin(){
        
    }
    
    func contactWithJetPack(){
        
    }
    
    func contactWithYellowPortal(){
        
        
    }
    
    func contactWithOrangePortal(){
        
        
    }
    
   
    
}
