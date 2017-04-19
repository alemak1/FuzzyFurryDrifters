//
//  PhysicsCategories.swift
//  FantasticFurryDrifters
//
//  Created by Aleksander Makedonski on 4/10/17.
//  Copyright © 2017 AlexMakedonski. All rights reserved.
//

import Foundation


enum PhysicsCategory: UInt32{
    case Player = 0b1
    case Enemy = 0b10
    case Spikeman = 0b100
    case GoldCoin = 0b1000
    case SilverCoin = 0b10000
    case BronzeCoin = 0b100000
    case GoldCarrot = 0b1000000
    case RegularCarrot = 0b10000000
    case YellowPortal = 0b100000000
    case OrangePortal = 0b1000000000
    case JetPack = 0b10000000000
}

enum PhysicsFieldCategory{
    
}
