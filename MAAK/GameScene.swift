//
//  GameScene.swift
//  MAAK
//
//  Created by Arya, Megha on 12/3/19.
//  Copyright © 2019 Arya, Megha. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
 
    
 
        
        // 1
        var player = SKSpriteNode()
        var player2 = SKSpriteNode()
        override func didMove(to view: SKView) {
            
            // 1
            backgroundColor = SKColor.white
            let image = UIImage(named: "Samuel")
            let texture = SKTexture(image: image!)
            player = SKSpriteNode(texture: texture)
            player.position = CGPoint(x: size.width * -0.3, y: size.height * -0.3)
            addChild(player)

            
            // 2
            backgroundColor = SKColor.white
            _ = UIImage(named: "Samuel")
            player2 = SKSpriteNode(texture: texture)
            player2.position = CGPoint(x: size.width * -0.3, y: size.height * -0.1)
            addChild(player2)

            
            //3
            backgroundColor = SKColor.white
            _ = UIImage(named: "Samuel")
            player2 = SKSpriteNode(texture: texture)
            player2.position = CGPoint(x: size.width * -0.3, y: size.height * 0.1)
            addChild(player2)
            
            //4
            backgroundColor = SKColor.white
            _ = UIImage(named: "Samuel")
            player2 = SKSpriteNode(texture: texture)
            player2.position = CGPoint(x: size.width * 0, y: size.height * 0)
            addChild(player2)
            
            //5
            backgroundColor = SKColor.white
            _ = UIImage(named: "Samuel")
            player2 = SKSpriteNode(texture: texture)
            player2.position = CGPoint(x: size.width * 0, y: size.height * -0.2)
            addChild(player2)
            
 // 1
 backgroundColor = SKColor.white
  _ = UIImage(named: "Samuel")
 player = SKSpriteNode(texture: texture)
 player.position = CGPoint(x: size.width * 0.3, y: size.height * -0.3)
 addChild(player)
 
 
 // 2
 backgroundColor = SKColor.white
 _ = UIImage(named: "Samuel")
 player2 = SKSpriteNode(texture: texture)
 player2.position = CGPoint(x: size.width * 0.3, y: size.height * -0.1)
 addChild(player2)
 
 
 //3
 backgroundColor = SKColor.white
 _ = UIImage(named: "Samuel")
 player2 = SKSpriteNode(texture: texture)
 player2.position = CGPoint(x: size.width * 0.3, y: size.height * 0.1)
 addChild(player2)
            
 
            
        }
    
    
    
    
 //   func addMonster() {
        
        // Create sprite
    //    let monster = SKSpriteNode(imageNamed: "samuel")
        
        // Determine where to spawn the monster along the Y axis
    //    let actualY = random(min: monster.size.height/2, max: size.height - monster.size.height/2)
        
        // Position the monster slightly off-screen along the right edge,
        // and along a random position along the Y axis as calculated above
  //      monster.position = CGPoint(x: size.width/2 + monster.size.width/2, y: actualY/2)
        
        // Add the monster to the scene
    //    addChild(monster)
     
        // Determine speed of the monster
      //  let actualDuration = random(min: CGFloat(2.0), max: CGFloat(4.0))
        
        // Create the actions
     //   let actionMove = SKAction.move(to: CGPoint(x: -monster.size.width/2, y: actualY),
     //                                  duration: TimeInterval(actualDuration))
     //   let actionMoveDone = SKAction.removeFromParent()
       // monster.run(SKAction.sequence([actionMove, actionMoveDone]))
 //   }
   
 
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    
    private var lastUpdateTime : TimeInterval = 0
    private var label : SKLabelNode?
    private var spinnyNode : SKShapeNode?
    
    override func sceneDidLoad() {

        self.lastUpdateTime = 0
        
        // Get label node from scene and store it for use later
       // self.label = self.childNode(withName: "//helloLabel") as? SKLabelNode
        if let label = self.label {
            label.alpha = 0.0
            label.run(SKAction.fadeIn(withDuration: 2.0))
        }
        
        // Create shape node to use during mouse interaction
        let w = (self.size.width + self.size.height) * 0.05
        self.spinnyNode = SKShapeNode.init(rectOf: CGSize.init(width: w, height: w), cornerRadius: w * 0.3)
        
        if let spinnyNode = self.spinnyNode {
            spinnyNode.lineWidth = 2.5
            
            spinnyNode.run(SKAction.repeatForever(SKAction.rotate(byAngle: CGFloat(Double.pi), duration: 1)))
            spinnyNode.run(SKAction.sequence([SKAction.wait(forDuration: 0.5),
                                              SKAction.fadeOut(withDuration: 0.5),
                                              SKAction.removeFromParent()]))
        }
    }
    
    
    func touchDown(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.green
            self.addChild(n)
        }
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.blue
            self.addChild(n)
        }
    }
    
    func touchUp(atPoint pos : CGPoint) {
        if let n = self.spinnyNode?.copy() as! SKShapeNode? {
            n.position = pos
            n.strokeColor = SKColor.red
            self.addChild(n)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
        
        // Initialize _lastUpdateTime if it has not already been
        if (self.lastUpdateTime == 0) {
            self.lastUpdateTime = currentTime
        }
        
        // Calculate time since last update
        let dt = currentTime - self.lastUpdateTime
        
        // Update entities
        for entity in self.entities {
            entity.update(deltaTime: dt)
        }
        
        self.lastUpdateTime = currentTime
    }
}
