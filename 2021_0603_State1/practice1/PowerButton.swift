//
//  PowerButton.swift
//  practice1
//
//  Created by 岡崎流依 on 2021/06/03.
//

import SwiftUI

struct PowerButton: View {
    @Binding var isPowerOn: Bool
    
    var body: some View {
        Button(action: {
            isPowerOn.toggle()
        }, label: {
            Image(systemName: "power")
        })
    }
}

//struct PowerButton_Previews: PreviewProvider {
//    static var previews: some View {
//        PowerButton(isPowerOn: <#Binding<Bool>#>)
//    }
//}
