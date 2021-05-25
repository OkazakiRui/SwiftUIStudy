//
//  ContentView.swift
//  layout
//
//  Created by 岡崎流依 on 2021/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            Divider()
            Text("SwiftUI!")
            Divider()
            ZStack{
                Image("sea1")
                    .resizable()
                    .frame(width: 300, height: 100)
                Text("SwiftUI!")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.top)
            }
            Group{
                if Bool.random(){
                    Text("trueだよ！")
                }else{
                    Text("falseだよ！")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
