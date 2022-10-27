//
//  ContentView.swift
//  Gesty
//
//  Created by Felice Marano on 17/10/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = ViewModel()
    
    var body: some View {
        
        VStack {
            
            TabViewModel()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
