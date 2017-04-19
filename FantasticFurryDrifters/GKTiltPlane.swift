//
//  GKTiltPlane.swift
//  FantasticFurryDrifters
//
//  Created by Aleksander Makedonski on 4/10/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

import Foundation
import GameplayKit
import SpriteKit
import CoreMotion


class GKTiltPlane: GKEntity{
    
    let textureAtlasManager = TextureAtlasManager.sharedInstance
    
    init(planeColor: AnimationFactory.Color, vector: CGVector, position: CGPoint?, size: CGSize?, scalingFactor: CGFloat, motionManager: CMMotionManager) {
        super.init()
        
        var planeTexture: SKTexture?
        var planeDefaultAction: SKAction
        
        //Add GKSpriteComponent
        switch planeColor {
            case .Blue:
                planeTexture = textureAtlasManager.getTextureAtlas(atlasType: .Planes)?.textureNamed("planeBlue1")
                planeDefaultAction = AnimationFactory.sharedInstance.getPlaneAnimation(color: .Blue)
                break
            case .Green:
                planeTexture = textureAtlasManager.getTextureAtlas(atlasType: .Planes)?.textureNamed("planeGreen1")
                planeDefaultAction = AnimationFactory.sharedInstance.getPlaneAnimation(color: .Green)
                break
            case .Red:
                planeTexture = textureAtlasManager.getTextureAtlas(atlasType: .Planes)?.textureNamed("planeRed1")
                  planeDefaultAction = AnimationFactory.sharedInstance.getPlaneAnimation(color: .Red)
                break
            case .Yellow:
                 planeTexture = textureAtlasManager.getTextureAtlas(atlasType: .Planes)?.textureNamed("planeYellow1")
                planeDefaultAction = AnimationFactory.sharedInstance.getPlaneAnimation(color: .Yellow)
                break
        }
        
        
        //Add sprite component to the plane
        addSpriteComponent(planeTexture: planeTexture, scalingFactor: scalingFactor)
        
        //Add transform component
        addTransformComponent(position: position, size: size)
        
        //Add physics body for the plane
        addPhysicsComponent(physicsBody: nil)
        
        //Add propeller animation for the plane
        addAnimationComponent(defaultAction: planeDefaultAction, defaultActionName: "propellerAction")
        
        //Add horizontal velocity component
        addVelocityComponent(velocity: vector)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func addSpriteComponent(planeTexture: SKTexture?, scalingFactor: CGFloat){
        
        guard let planeTexture = planeTexture else { return }
        
        let spriteComponent = GKSpriteComponent(texture: planeTexture)
        
        spriteComponent.node.xScale *= scalingFactor
        spriteComponent.node.yScale *= scalingFactor
        
        addComponent(spriteComponent)
    }
    
    /** The first size used is that provided by the user; if that is unavailable, then the size defaults to the SpriteComponent node's texture size; if that is unavailable, then the size defaults ot a hard-coded value
     **/
    func addTransformComponent(position: CGPoint?, size: CGSize?){
        
        let textureSize = component(ofType: GKSpriteComponent.self)?.node.size
        let defaultSize: CGSize? = textureSize ?? CGSize(width: 40, height: 40)
        
        let playerPosition = position ?? CGPoint.zero
        let playerSize = size ?? defaultSize
        
        let transformComponent = GKTransformComponent(position: playerPosition, size: playerSize)
        addComponent(transformComponent)
        transformComponent.setTransformPropertiesForParent()
        
    }
    
    /** If the GKSpriteComponent has been added, then the PhysicsBody will be based on the SpriteComponent's texture only; if it has not been added, then the physics body component will default to the user-provided physics body, which may be null
     
     **/
    private func addPhysicsComponent(physicsBody: SKPhysicsBody?){
        
        
        let physicsComponent: GKPhysicsBodyComponent = GKPhysicsBodyComponent(defaultPhysicsBody: physicsBody)
        addComponent(physicsComponent)
        
        if(physicsBody != nil){
            physicsComponent.setParentPhysicsBodyToDefault()
        }
        
        //Couple the GKPhysicsBodyComponent with the GKSpriteNodeComponent of the parent
        
        if let node = component(ofType: GKSpriteComponent.self)?.node{
            
            let planeTexture = node.texture
            let planeTextureSize = planeTexture?.size()
            
            physicsComponent.setPhysicsBodyForParent(physicsBodyType: .Texture, circleRadius: nil, edgePoint1: nil, edgePoint2: nil, path: nil, rectSize: nil, rectCenter: nil, circleCenter: nil, texture: planeTexture, textureSize: planeTextureSize)
            physicsComponent.setPhysicsPropertiesFor(physicsBodyCategory: .Parent)
        }
        
    }
    
    private func addMotionResponderComponent(motionManager: CMMotionManager){
        let motionResponderComponent = GKMotionResponderComponentY(motionManager: motionManager)
        addComponent(motionResponderComponent)
        
    }
    
    private func addAnimationComponent(defaultAction: SKAction, defaultActionName: String){
        let animationComponent = GKAnimationComponent(defaultAnimation: defaultAction, animationName: defaultActionName)
        addComponent(animationComponent)
        animationComponent.runDefaultAnimation()
        
        
    }
    
    private func addVelocityComponent(velocity: CGVector){
        let velocityComponent = GKPhysicsPropertyComponent(velocity: velocity)
        addComponent(velocityComponent)
        
    }
}
