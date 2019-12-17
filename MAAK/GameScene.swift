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
    

    
    
    
    var num:Int = 0
    var oldNum=10
    
  
    var viewController: GameViewController!
    
    var a1 : Bool = false
    var a2 : Bool = false
    var a3 : Bool = false
    var a4 : Bool = false
    var a5 : Bool = false
    var a6 : Bool = false
    var a7 : Bool = false
    var a8 : Bool = false
        
    
    
    
    // 1
    
    var player = SKSpriteNode()
    var player2 = SKSpriteNode()
    var player3 = SKSpriteNode()
    var player4 = SKSpriteNode()
    var player5 = SKSpriteNode()
    var player6 = SKSpriteNode()
    var player7 = SKSpriteNode()
    var player8 = SKSpriteNode()
    
    var clickHere=SKSpriteNode()
   
   
 
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
        
        player3 = SKSpriteNode(texture: texture)
        
        player3.position = CGPoint(x: size.width * -0.3, y: size.height * 0.1)
        
        addChild(player3)
        
        
        
        //4
        
        backgroundColor = SKColor.white
        
        _ = UIImage(named: "Samuel")
        
        player4 = SKSpriteNode(texture: texture)
        
        player4.position = CGPoint(x: size.width * 0, y: size.height * 0)
        
        addChild(player4)
        
        
        
        //5
        
        backgroundColor = SKColor.white
        
        _ = UIImage(named: "Samuel")
        
        player5 = SKSpriteNode(texture: texture)
        
        player5.position = CGPoint(x: size.width * 0, y: size.height * -0.2)
        
        addChild(player5)
        
        
        
        // 1
        
        backgroundColor = SKColor.white
        
        _ = UIImage(named: "Samuel")
        
        player6 = SKSpriteNode(texture: texture)
        
        player6.position = CGPoint(x: size.width * 0.3, y: size.height * -0.3)
        
        addChild(player6)
        
        
        // 2
        
        backgroundColor = SKColor.white
        
        _ = UIImage(named: "Samuel")
        
        player7 = SKSpriteNode(texture: texture)
        
        player7.position = CGPoint(x: size.width * 0.3, y: size.height * -0.1)
        
        addChild(player7)
        
        
        
        //3
        
        backgroundColor = SKColor.white
        
        _ = UIImage(named: "Samuel")
        
        player8 = SKSpriteNode(texture: texture)
        
        player8.position = CGPoint(x: size.width * 0.3, y: size.height * 0.1)
        
        addChild(player8)
        
        player.isHidden=true
        player2.isHidden=true
        player3.isHidden=true
        player4.isHidden=true
        player5.isHidden=true
        player6.isHidden=true
        player7.isHidden=true
        player8.isHidden=true
        
        
        
        }
    
    
  /*  func show3(num2:Int){
        
        // print(num2)
        // num=num2+1
        num=1
        print(num)
        
        switch num{
        case 1:
            //   player.isHidden=false
            player.isHidden=false
            print(player.isHidden)
            
        case 2:
            //   player.isHidden=false
            print("switch2")
        case 3:
            // player.isHidden=false
            print("switch3")
            
        case 4:
            //   player.isHidden=false
            print("switch4")
        case 5:
            //   player.isHidden=false`
            print("switch5")
        default:
            print("hey")
        }}*/
    
    var num1:Int = 0
    
    override func touchesBegan(_ touches: Set<UITouch>,with event: UIEvent?){
    
        
        for index in 1...5{
        
      //  print(num)
         num1 = Int(arc4random_uniform(UInt32(9)))
        switch num1{
        case 1:
            //   player.isHidden=false
            player.isHidden=false
            print(player.isHidden)
 
            
        case 2:
            //   player.isHidden=false
            print("switch2")
            player2.isHidden=false
            print(player2.isHidden)

            
        case 3:
            // player.isHidden=false
            print("switch3")
            player3.isHidden=false
            print(player3.isHidden)
     
            
        case 4:
            //   player.isHidden=false
            print("switch4")
            player4.isHidden=false
            print(player4.isHidden)
        case 5:
            //   player.isHidden=false`
            print("switch5")
            player5.isHidden=false
            print(player5.isHidden)
        case 6:
            //   player.isHidden=false`
            print("switch5")
            player6.isHidden=false
            print(player6.isHidden)
        case 7:
            //   player.isHidden=false`
            print("switch5")
            player7.isHidden=false
            print(player7.isHidden)
        case 8:
            //   player.isHidden=false`
            print("switch8")
            player8.isHidden=false
            print(player8.isHidden)
        default:
            print("hey")
        
   
        }
        }
        
    
        
        
        

        for touch in (touches) {
            
         
            
            //let location = touch.location(in: self.camera)
            let location = touch.location(in: self)
            //print("x- \(location.x), y- \(location.y)")
            
            a1 = false
            a2 = false
            a3 = false
            a4 = false
            a5 = false
            a6 = false
            a7 = false
            a8 = false
            
            // col 1
            if (location.x < -168 && location.y > 63 && location.y < 200){
                a3 = true
                player3.isHidden = true
            }
            if (location.x < -168 && location.y > -205 && location.y < -64){
                a2 = true
                player2.isHidden = true
            }
           if (location.x < -168 && location.y > -473 && location.y < -330){
                a1 = true
                player.isHidden = true
            }
            
            // col 2
            if (location.x > -59 && location.x < 55 && location.y > -67 && location.y < 68){
                a4 = true
                player4.isHidden = true
            }
            if (location.x > -59 && location.x < 55 && location.y > -340 && location.y < -200){
                a5 = true
                player5.isHidden = true
            }
            
            // col 3
            if (location.x > 165 && location.y > 63 && location.y < 200){
                a8 = true
                player8.isHidden = true
            }
            if (location.x > 165 && location.y > -205 && location.y < -64){
                a7 = true
                player7.isHidden = true
            }
            if (location.x > 165 && location.y > -473 && location.y < -330){
                a6 = true
                player6.isHidden = true
            }
        }
    }
    
    //var duration =
    
    
    
    
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
    
    /*override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let label = self.label {
            label.run(SKAction.init(named: "Pulse")!, withKey: "fadeInOut")
        }
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }*/
    
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
            
         // print("time \(currentTime)")

            entity.update(deltaTime: dt)
            
        }
        self.lastUpdateTime = currentTime
    }
}
