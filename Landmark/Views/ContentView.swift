//
//  ContentView.swift
//  SwiftLesson01
//
//  Created by MacBook Air on 03/09/24.
//

import SwiftUI


struct ContentView: View {
    @State private var selection: Tab = .featured


    enum Tab {
        case featured
        case list
    }


    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)


            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}


#Preview {
    ContentView()
        .environment(ModelData())
}

//struct HandView : View {
//    var body: some View {
//        Image(systemName: "hand.raised")
//            .resizable()
//                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
//                .background(Color("Primary"))
//                .foregroundColor(.white)
//            .padding()
//            .background(Color("Primary"))
//            .cornerRadius(20)
//    }
//}
