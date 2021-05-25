//
//  ContentView.swift
//  Hello Swift
//
//  Created by 岡崎流依 on 2021/05/25.
//

import SwiftUI


struct ContentView: View {
    @State var labelText = "Hello, SwiftUI!"
    
    var body: some View {
        ZStack{
            Color("test1")
                .edgesIgnoringSafeArea(.all)
            
            Color.primary
            
            Text("a")
                .padding(.init(top: 100, leading: 200, bottom: 300, trailing: 50))
                .background(Color.yellow)
            
            Circle()
                .frame(width: 30, height: 30)
                .foregroundColor(.white)
                .background(Color.gray)
                .position(x: 60, y: 80)
            
            VStack(spacing: 80) {
                
                Text(labelText)
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 255.0, green: 0.0, blue: 255.0, opacity: 0.4))
                    .position(x:20, y:20)
                    .fixedSize()
                    .frame(width:100, height:100)
                
                Button(action: {self.labelText = "Yes Tappend!"}) {
                    Text("Tap!")
                        .font(.footnote)
                        .fontWeight(.thin)
                        .frame(width: 100, height: 100)
                        .border(Color.red, width: 3)
                        .background(Color.white)
                        .foregroundColor(Color.black)
                        .offset(x: 50, y: 30)
                        .background(Color.green)
                }
            }
            
            Image(systemName: "trash")
                .background(Color.white)
                .font(.title)
                .foregroundColor(Color.gray)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
