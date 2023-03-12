//
//  ValueView1.swift
//  QiitaAPISwiftUI
//
//  Created by sako0602 on 2023/03/11.
//

import SwiftUI

struct ValueView1: View {
    //ValueMakerのインスタンスを作り観測する
    @ObservedObject var maker = ValueMaker()
    
    var body: some View {
        VStack {
            Text("\(maker.value)")
                .foregroundColor((maker.value > 0.8) ? .white : .green)
                .background((maker.value > 0.8) ? Color.red : Color.white)
            //カウンタを表示させる
            HStack{
                Text("カウンタ")
                Text("\(maker.counter)")
                    .font(.largeTitle)
            }
        }
    }
}

struct ValueView2: View {
    //ValueMakerのインスタンスを作り観測する
    @StateObject var maker = ValueMaker()
    
    var body: some View {
        VStack {
            Text("\(maker.value)")
                .foregroundColor((maker.value > 0.8) ? .white : .green)
                .background((maker.value > 0.8) ? Color.red : Color.white)
            //カウンタを表示させる
            HStack{
                Text("カウンタ")
                Text("\(maker.counter)")
                    .font(.largeTitle)
            }
        }
    }
}

struct ValueView1_Previews: PreviewProvider {
    static var previews: some View {
        ValueView1()
    }
}
