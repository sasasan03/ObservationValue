//
//  StateObjectTest.swift
//  QiitaAPISwiftUI
//
//  Created by sako0602 on 2023/03/11.
//

import SwiftUI

struct StateObjectTest: View {
    
    @State var isShow = true
    
    var body: some View {
        VStack {
            HStack{
                Text("Observed")
                //@ObservedObjectで作ったインスタンスは親Viewが再描画されると子ViewのValueView1も再描画されるため、カウントが0に戻る
                ValueView1()
            }
            HStack {
                Text("StateObj")
                //@StateObjectは再描画されても、値を保持し続ける
                ValueView2()
            }
            Toggle(isOn: $isShow) {}
            if isShow {
                Text("ヤッホーい")
            }
        }
    }
}

struct StateObjectTest_Previews: PreviewProvider {
    static var previews: some View {
        StateObjectTest()
    }
}
