//
//  TabViewModel.swift
//  Gesty
//
//  Created by Felice Marano on 17/10/22.
//

import SwiftUI

struct TabViewModel: View {
    var body: some View {
        TabView {
            
            HomeView()
            .tabItem {
                Label("Home", systemImage: "house.fill")
            }
            
            AddPersonView()
            .tabItem {
                Label("Aggiungi", systemImage: "person.badge.plus.fill")
            }
            
            ListaUtentiView()
            .tabItem {
                Label("Utenti", systemImage: "list.dash")
            }
            
            SettingsView()
                .tabItem {
                    Label("Account", systemImage: "person.crop.circle")
                }
        }
    }
}

struct TabViewModel_Previews: PreviewProvider {
    static var previews: some View {
        TabViewModel()
    }
}
