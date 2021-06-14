//
//  ContentView.swift
//  LocalStorage
//
//  Created by 岡崎流依 on 2021/06/14.
//

import SwiftUI

struct Setting {
    static let firstNameKey = "firstName"
    static let lastNameKey = "lastName"
    static let boolKey = "bool"
}

struct ContentView: View {
    @AppStorage(Setting.firstNameKey) var firstName = ""
    @AppStorage(Setting.lastNameKey) var lastName = ""
    @AppStorage(Setting.boolKey) var bool = true
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Details")) {
                        TextField("First Name", text: $firstName)
                        TextField("Last Name", text: $lastName)
                    }
                    Section(header: Text("Bool")) {
                        Toggle("toggle", isOn: $bool)
                    }
                }
            }
            .navigationBarTitle("AppStorage")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
