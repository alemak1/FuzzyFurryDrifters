//
//  MotionResponderComponent.swift
//  FantasticFurryDrifters
//
//  Created by Aleksander Makedonski on 4/6/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit
import CoreMotion

class GKMotionResponderComponent: GKComponent{
    
    var motionManager: CMMotionManager!
    
    /** The physicsBody is a computed property, which means that is assumed that (1) the MotionResponder component has already been added to an entity, and (2) the entity to which it has been added already has physics component that can be accessed indirectly via the entity property of the component; this component is tightly coupled to the physics component, and its functionality is added as a component for readability and semantic consistency
 
 
    **/
    var physicsBody: SKPhysicsBody{
        get{
            if let parentEntity = self.entity, let physicsComponent = parentEntity.component(ofType: GKPhysicsBodyComponent.self){
                return physicsComponent.parentPhysicsBody!
            }
            
            return SKPhysicsBody()
        }
    }
    
    var appliedForceDeltaX = 0.00
    var appliedForceDeltaY = 0.00
    
    
    init(motionManager: CMMotionManager){
        super.init()

        self.motionManager = motionManager
        
    }
    
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)
        

        
    }
    
    
    func setAppliedForceDeltaX(){
        
        if let motionData = motionManager.deviceMotion{
            let horizontalAttitude = motionData.attitude.roll
            let horizontalRotationRate = motionData.rotationRate.y
            
            if((horizontalAttitude > 0.00 && horizontalRotationRate > 0.00) || (horizontalAttitude < 0.00 && horizontalRotationRate < 0.00)){
                appliedForceDeltaX = horizontalRotationRate*150.00
            }
            

        }
    }
    
    
    func setAppliedForceDeltaY(){
        
        if let motionData = motionManager.deviceMotion{
            let verticalAttitude = -motionData.attitude.pitch
            let verticalRotationRate = -motionData.rotationRate.x
            
            if((verticalAttitude < 0.00 && verticalRotationRate < 0.00) || (verticalAttitude > 0.00 && verticalRotationRate > 0.00)){
                appliedForceDeltaY = verticalRotationRate*150
            }
            
            
        }
    }
    
    func applyPhysicsBodyForceFromRotationInput(){
        let appliedImpulseVector = CGVector(dx: appliedForceDeltaX, dy: appliedForceDeltaY)
        physicsBody.applyForce(appliedImpulseVector)
        
    }
    
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented yet")
    }
}


class GKMotionResponderComponentX: GKMotionResponderComponent{
    
    
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)
        setAppliedForceDeltaX()
        applyPhysicsBodyForceFromRotationInput()
    }
}


class GKMotionResponderComponentY: GKMotionResponderComponent{
    
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)
        setAppliedForceDeltaY()
        applyPhysicsBodyForceFromRotationInput()
    }
}


class GKMotionResponderComponentXY: GKMotionResponderComponent{
    override func update(deltaTime seconds: TimeInterval) {
        super.update(deltaTime: seconds)
        setAppliedForceDeltaX()
        setAppliedForceDeltaY()
        applyPhysicsBodyForceFromRotationInput()
    }
}
