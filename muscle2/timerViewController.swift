//
//  timerViewController.swift
//  muscle2
//
//  Created by 笹倉 一也 on 2018/02/06.
//  Copyright © 2018年 笹倉 一也. All rights reserved.
//

import UIKit

class timerViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var startBtn: UIButton!
    @IBOutlet weak var stopBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    
    
    var timer = Timer()
    var startTime: TimeInterval = 0
    var elapsedTime: Double = 0.0
    var time : Double = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
 
    
    
    @IBAction func startTapped(_ sender: Any) {
        startBtn.isEnabled = false
        resetBtn.isEnabled = false
        stopBtn.isEnabled = true
        
        startTime = Date().timeIntervalSince1970
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(self.update), userInfo: nil, repeats: true)
    }
    
    // 0.01秒ごとに呼び出される処理
    @objc func update() {
        // 経過時間は以下の式で計算する
        // (現在の時刻 - Startボタンを押した時刻) + Stopボタンを押した時点で経過していた時刻
        time = Date().timeIntervalSince1970 - startTime + elapsedTime
        // 時間を小数点前後で分割(小数点以下は2桁だけ取得)
        let sec = Int(time)
//        let msec = Int((time - Double(sec)) * 100)
        // 「XX:XX.XX」形式でラベルに表示する
        let displayStr = NSString(format: "%02d:%02d", sec/60, sec%60) as String
        timeLabel.text = displayStr
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    @IBAction func stopTapped(_ sender: Any) {
        
        // Startボタン、Resetボタンを有効化
        startBtn.isEnabled = true
        resetBtn.isEnabled = true
        // Stopボタンを無効化
        stopBtn.isEnabled = false
        // タイマー処理を止める
        timer.invalidate()
        // 再度Startボタンを押した時
        elapsedTime = time
        
    }
    
    @IBAction func resetTapped(_ sender: Any) {
        
        elapsedTime = 0.0
        timeLabel.text = "00:00"
        
    }
    
    
    

  

}
