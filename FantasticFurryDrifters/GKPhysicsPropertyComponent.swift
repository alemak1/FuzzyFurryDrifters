//
//  GKPhysicsPropertyComponent.swift
//  FantasticFurryDrifters
//
//  Created by Aleksander Makedonski on 4/10/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit


class GKPhysicsPropertyComponent: GKComponent{
    
    /** The physics body is computed property derived from the parent entity's physics component; since the underlying base property is not available until after adding the component, and since adding the component require that it be initialized, a default physics body is initialized and configured first; after adding the component to the parent entity, the default physics body is set equal to the parent's physics body using the helper method "setParentPhysicsBodyWithDefaultBody"
 
    **/
    private var physicsBody: SKPhysicsBody{
        get{
            if let parentEntity = self.entity, let physicsComponent = parentEntity.component(ofType: GKPhysicsBodyComponent.self){
                return physicsComponent.parentPhysicsBody!
            }
            
            return SKPhysicsBody()
        }
    }
    
    func setParentPhysicsBodyWithDefaultBody(){
        if let parentEntity = self.entity, let physicsComponent = parentEntity.component(ofType: GKPhysicsBodyComponent.self){
            physicsComponent.parentPhysicsBody = self.physicsBody
        }
    }
    
    var velocity: CGVector {
        get{
            return physicsBody.velocity
        }
        
        set(newVelocity){
            physicsBody.velocity = newVelocity
        }
    }
    
    var angularVelocity: CGFloat{
        get{
            return physicsBody.angularVelocity
        }
        
        set(newAngularVelocity){
            physicsBody.angularVelocity = newAngularVelocity
        }
    }
    
    var mass: CGFloat{
        get{
            return physicsBody.mass
        }
        
        set(newMass){
            physicsBody.mass = newMass
        }
    }
    
    var angularDamping: CGFloat{
        get{
            return physicsBody.angularDamping
        }
        
        set(newAngularDamping){
            physicsBody.angularDamping = newAngularDamping
        }
    }
    
    var linearDamping: CGFloat{
        get{
            return physicsBody.linearDamping
        }
        
        set(newLinearDamping){
            physicsBody.linearDamping = newLinearDamping
        }
    }
    
    var density: CGFloat{
        get{
            return physicsBody.density
        }
        
        set(newDensity){
            physicsBody.density = newDensity
        }
    }
    
    var charge: CGFloat{
        get{
            return physicsBody.charge
        }
        
        set(newCharge){
            physicsBody.charge = newCharge
        }
    }
    
    init(velocity: CGVector, angularVelocity: CGFloat, mass: CGFloat, density: CGFloat, angularDamping: CGFloat, linearDamping: CGFloat, electricCharge: CGFloat) {
        super.init()
        
        self.velocity = velocity
        self.mass = mass
        self.angularDamping = angularDamping
        self.linearDamping = linearDamping
        self.angularVelocity = angularVelocity
        self.density = density
        self.charge = electricCharge
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
