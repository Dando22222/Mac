//
//  ClassDetailView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct ClassDetailView: View {
    
    let title : String = "WAR"
    
    var body: some View {
        CustomNavBarClassView(title: title)
    }
}

struct ClassDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ClassDetailView()
    }
}
