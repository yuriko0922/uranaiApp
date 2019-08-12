//
//  ViewController.swift
//  uranaiApp
//
//  Created by 津國　由莉子 on 2019/08/09.
//  Copyright © 2019 yurityann. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //生年月日スクロールするやつ
    @IBOutlet weak var datePicker: UIDatePicker!
    
    //血液型
    @IBOutlet weak var bladType: UISegmentedControl!
    
    //数字のバー
    @IBAction func numbar(_ sender: UISlider) {
        //バーで設定した数字を下のラベルに表示する処理
        numLabel.text = String(Int(sender.value))
    }
    
    
    //選んだ数字表示するラベル
    @IBOutlet weak var numLabel: UILabel!
    
    
    @IBOutlet weak var kekka: UITextView!
    
    //占うボタン
    @IBAction func uranauBotton(_ sender: Any) {
        
        
        let date = datePicker.date
        //    let year = day.component(.year, from: date)
        let year = datePicker.calendar.component(.year, from: date)
        
        let month = datePicker.calendar.component(.month, from: date)
        let day = datePicker.calendar.component(.day, from: date)
        
        
        
        //生年月日で占うよん
        //余りで占い結果分けます
        //6で割って、余りの数を出します
        let born = (year + month + day) % 4
        
        //ラッキーカラー
        let luckyColer = ["ピンク","みどり","水色","黒"]
        
        //余りが0の場合
        if  born == 0 {
            kekka.text! = "あなたのラッキーカラーは\(luckyColer[0])です。"
            //余りが1の場合
        } else if born == 1 {
            kekka.text! = "あなたのラッキーカラーは\(luckyColer[1])です。"
            //余りが2の場合
        } else if born == 2 {
            kekka.text! = "あなたのラッキーカラーは\(luckyColer[2])です。"
            //余りが3の場合
        } else {
            kekka.text! = "あなたのラッキーカラーは\(luckyColer[3])です。"
        }
        
        
        
        
        //血液型で占うよ
        //どんな人かの配列
        let liketipe = ["優しい人","冷たい人","可愛い人","天才"]
        //血液型の定義
        let BladType = bladType.selectedSegmentIndex
        //A型の場合
        if BladType == 0 {
            kekka.text! += "あなたは\(liketipe[0])と恋に落ちます。"
            // B型の場合
        } else if BladType == 1 {
            kekka.text! += "あなたは\(liketipe[1])と恋に落ちます。"
            // O型の場合
        } else if BladType == 2 {
            kekka.text! += "あなたは\(liketipe[2])と恋に落ちます。"
            // AB型の場合
        } else {
            kekka.text! += "あなたは\(liketipe[3])と恋に落ちます。"
        }
        
        
        //数字で占うよん
        //値の定義　これも余りで出します
        let number = Int(String(numLabel.text!))! % 4
        //
        let unn = ["金運が上がります","金運が下がります","賭け運が上がります","賭け運が下がります"]
        
        //余りが0の場合
        if number == 0 {
            kekka.text! += "今年は\(unn[0])。"
            //余りが1の場合
        } else if number == 1 {
            kekka.text! += "今年は\(unn[1])。"
            //余りが2の場合
        } else if number == 2 {
            kekka.text! += "今年は\(unn[2])。"
            //余りが3の場合
        } else {
            kekka.text! += "今年は\(unn[3])。"
        }
        
        
        
        
        
        
        
        
        
        
    }
    
}

