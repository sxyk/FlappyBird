//
//  GameScene.swift
//  FlappyBird
//
//  Created by 田中優樹 on 2017/09/18.
//  Copyright © 2017年 yuki.tanaka. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {

    override func didMove(to view: SKView) {
        //背景色を設定
        backgroundColor = UIColor(colorLiteralRed: 0.15, green: 0.75, blue: 0.90, alpha: 1)
    
        //地面の画像を読み込む
        let groundTexture = SKTexture(imageNamed: "ground")
        //一番近いサイズを選択する
        groundTexture.filteringMode = SKTextureFilteringMode.nearest
        
        //テクスチャを指定してスプライトを作成する
        let groundSprite = SKSpriteNode(texture: groundTexture)
        
        //スプライトの表示する位置を指定する
        groundSprite.position = CGPoint(x: size.width / 2, y: groundTexture.size().height / 2)
        
        //シーンにスプライトを追加する
        addChild(groundSprite)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
