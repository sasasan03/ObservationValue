//
//  ValueView.swift
//  QiitaAPISwiftUI
//
//  Created by sako0602 on 2023/03/11.
//

import Foundation

class ValueMaker: ObservableObject {
    @Published var value: Double
    @Published var counter: Int = 0
    private var timer: Timer
    init(){
        value = 0.0
        timer = Timer()//タイマーを作る
        start()//スタート
    }
    //タイマーをスタート
    func start() {
        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true) { _ in
            //valueに乱数をセットする
            self.value = Double.random(in: 0 ... 1)
            //valueが0.8より大きかった場合にカウントする
            if self.value > 0.8 {
                self.counter += 1
            }
        }
    }
}
