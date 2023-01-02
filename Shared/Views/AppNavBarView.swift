//
//  AppNavBarView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct AppNavBarView: View {
    var body: some View {
        CustomNavView{
            ZStack{
                CustomNavLink(destination: Text("Text"))
                {Text("Navigate")}
                }
            }
        }
}

struct AppNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        AppNavBarView()
    }
}

extension AppNavBarView {
    private var defaultNavView: some View {
        NavigationView{
            ZStack{
                Color.green.ignoresSafeArea()
                
                NavigationLink(destination: Text("Destination")
                    .navigationTitle("Title 2")
                    .navigationBarBackButtonHidden(false), label: { Text("Naviagte")})
                               
            }
            .navigationTitle("Nav title here")
        }
    }
    
}
