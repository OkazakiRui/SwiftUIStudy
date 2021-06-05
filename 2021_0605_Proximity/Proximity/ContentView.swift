//
//  ContentView.swift
//  Proximity
//
//  Created by 岡崎流依 on 2021/06/05.
//

import SwiftUI
import UIKit

class ProximityObserver {
    @objc func didChange(notification: NSNotification) {
        print("change")
        if let device = notification.object as? UIDevice {
            print(device.proximityState)
        }
    }
}

struct ContentView: View {
    var proximityObserver = ProximityObserver()
    
    func activateProximitySensor() {
        print("activate")
        UIDevice.current.isProximityMonitoringEnabled = true
        
        if UIDevice.current.isProximityMonitoringEnabled {
            NotificationCenter.default.addObserver(proximityObserver, selector: #selector(proximityObserver.didChange), name: UIDevice.proximityStateDidChangeNotification, object: UIDevice.current)
        }
    }
    
    
    func deactivateProximitySensor() {
//        Viewが表示されていない時にする
        print("deactivate")
        UIDevice.current.isProximityMonitoringEnabled = false
        
        NotificationCenter.default.removeObserver(proximityObserver, name: UIDevice.proximityStateDidChangeNotification, object: UIDevice.current)
    }
    
    var body: some View {
        Text("近接センサー")
            .onAppear() {
//                Viewが表示されている状態
                self.activateProximitySensor()
            }.onDisappear() {
//                Viewが表示されていない状態
                self.deactivateProximitySensor()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
