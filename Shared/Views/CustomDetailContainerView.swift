//
//  CustomDetailContainerView.swift
//  Play
//
//  Created by Diane Smith on 12/14/22.
//

import SwiftUI

struct CustomDetailContainerView<Content: View>: View {
    
    let content: Content
    @State private var showBackButton: Bool = true
    @State private var title: String = ""
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    var body: some View {
        VStack(spacing: 0){
            CustomNavBarDetailView()
            content
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct CustomDetailContainerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomDetailContainerView {
            ZStack{
                Color.green.ignoresSafeArea()
                Text("Hello World!")
                .foregroundColor(.white)
                .customNavigationTitle("New Title")
                .customNavigationBarBackButtonHidden(true)
        }
    }
}
}
