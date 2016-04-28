//
//  ViewController.swift
//  samplePickerView
//
//  Created by RIho OKubo on 2016/04/28.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

//　プロトコルを指定

class ViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    
    //列数と行数を決めないとエラーが出る
    
    @IBOutlet weak var myPicker: UIPickerView!
    
    //データ（選択肢）を配列で用意する
    //メンバ変数（同じクラス内の複数メソッドで使用可能）
    var teaList = ["ダージリン","アールグレイ","アッサム","オレンジペコ"]

    override func viewDidLoad() {
        super.viewDidLoad()
        myPicker.dataSource = self; //自分、viewController、指示はviewControllerの中に書いてあるよ、後述しているよ
        
        myPicker.delegate = self;
        
        //ローカル変数（宣言したメソッドの中でのみ有効）
        //var = i
    }
    
    //ピッカービューの列数を返すメソッド
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
                         return 1
    }
    
    
    //ピッカービューの行数を返すメソッド
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return teaList.count
    }
    
    //ピッカービューに表示する文字のセット
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return teaList[row]
    }
    
    //ピッカービューで選択された時に行う処理
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("選択されたのは\(row)行名で\(teaList[row])です")
    }
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

