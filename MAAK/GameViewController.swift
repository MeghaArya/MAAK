//
//  GameViewController.swift
//  MAAK
//
//  Created by Arya, Megha on 12/3/19.
//  Copyright © 2019 Arya, Megha. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var timer: Timer?
    
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
       
    //    show("GameScene.swift") as? GameScene {
            
            // Configure the view code
            
        
        
           if let view = self.view as! SKView? {
                // Load the SKScene from 'GameScene.sks'
                let scene = SKScene(fileNamed: "GameScene")
                scene?.scaleMode = .aspectFill
                view.presentScene(scene)
                
                view.ignoresSiblingOrder = true
                view.showsFPS = true
                view.showsNodeCount = true
            
       
            
            
            
            }
        
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in
            let index = Int(arc4random_uniform(UInt32(7)))
        //    print(index)
            //  var index:Int=0
            let scene = GameScene.init()
            scene.show3(num2:index)
        }
        
        
        
        //Testing github
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GKScene(fileNamed: "GameScene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! GameScene? {
                
                // Copy gameplay related content over to the scene
                sceneNode.entities = scene.entities
                sceneNode.graphs = scene.graphs
                
                // Set the scale mode to scale to fit the window
                sceneNode.scaleMode = .aspectFill
                
                // Present the scene
                if let view = self.view as! SKView? {
                    view.presentScene(sceneNode)
                    
                    view.ignoresSiblingOrder = true
                    
                    view.showsFPS = true
                    view.showsNodeCount = true
                }
            }
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}

