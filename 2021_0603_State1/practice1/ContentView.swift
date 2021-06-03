//
//  ContentView.swift
//  practice1
//
//  Created by 岡崎流依 on 2021/06/03.
//

import SwiftUI

struct ContentView: View {
    @State private var isPowerOn = false
    
    var body: some View {
        HStack{
            PowerButton(isPowerOn: $isPowerOn)
//            子のView要素にStateを渡すときは $ を使う
            Text(isPowerOn ? "ボタンON" : "ボタンOFF")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
