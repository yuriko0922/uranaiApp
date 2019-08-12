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
        let born = (year + month + day) % 6
        
        //ラッキーカラー
        let luckyColer = ["ピンク","みどり","水色","黒","レインボー","オレンジ"]
        
        //余りが０の場合
        if  born == 0 {
            kekka.text! = "あなたのラッキーカラーは\(luckyColer[0])です。"
            
        } else if born == 1 {
           kekka.text! = "あなたのラッキーカラーは\(luckyColer[1])です。"
            
        } else if born == 2 {
            kekka.text! = "あなたのラッキーカラーは\(luckyColer[2])です。"
            
        } else if born == 3 {
            kekka.text! = "あなたのラッキーカラーは\(luckyColer[3])です。"
            
        } else if born == 4 {
           kekka.text! = "あなたのラッキーカラーは\(luckyColer[4])です。"
            
        } else {
            kekka.text! = "あなたのラッキーカラーは\(luckyColer[5])です。"
        }
        
        
        //血液型で占うよ
        let liketipe = ["優しい人","冷たい人","可愛い人","天才"]
        
        let BladType = bladType.selectedSegmentIndex
        
        if BladType == 0 {
            kekka.text! += "あなたは\(liketipe[0])と恋に落ちます。"
            // B型の場合
        } else if BladType == 1 {
           kekka.text! += "あなたは\(liketipe[1])と恋に落ちます。"
            // O型の場合
        } else if BladType == 2 {
            kekka.text! += "あなたは\(liketipe[1])と恋に落ちます。"
            // AB型の場合
        } else {
            kekka.text! += "あなたは\(liketipe[1])と恋に落ちます。"
        }
        
       
        
        
        
        
        
    
    
    
    
    }

}

