//
//  ViewController.swift
//  FlappyBird
//
//  Created by 田中優樹 on 2017/09/18.
//  Copyright © 2017年 yuki.tanaka. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //SKViewに型変換
        let skView = self.view as! SKView
        
        //FPSの表示
        skView.showsFPS = true
        
        //ノードの数の表示
        skView.showsNodeCount = true
        
        //ビューと同じサイズでシーンを作成する
        let scene = GameScene(size: skView.frame.size)
        
        //ビューにシーンを表示する
        skView.presentScene(scene)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

