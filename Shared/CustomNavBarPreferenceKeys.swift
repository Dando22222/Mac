//
//  CustomNavBarPreferenceKeys.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import Foundation
import SwiftUI

//@Environment(\.presentationMode) var presentationMode
//@State private var showBackButton: Bool = true
//@State private var title: String = "Title"

struct CustomNavBarTitlePreferenceKey: PreferenceKey{
    
    static var defaultValue: String = ""
    
    static func reduce(value: inout String, nextValue: () -> String) {
        value = nextValue()
    }
}

struct CustomNavBarBackButtonHiddenPreferenceKey: PreferenceKey{
    
    static var defaultValue: Bool = false
    
    static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

extension View {
    
//    .navigationTitle("Title 2")
//    .navigationBarBackButtonHidden(false), label: { Text("Naviagte")})
    
    func customNavigationTitle(_ title: String) -> some View {
        preference(key: CustomNavBarTitlePreferenceKey.self, value: title)
    }
    
    func customNavigationBarBackButtonHidden(_ hidden: Bool) -> some View {
        preference(key: CustomNavBarBackButtonHiddenPreferenceKey.self, value: hidden)
    }
    
    func customNavBarItems(title: String = "", backButtonHidden: Bool = false) -> some View {
        self
            .customNavigationTitle(title)
            .customNavigationBarBackButtonHidden(backButtonHidden)
    }
    
}
